// Independent exact continuous cover for the ten-point Heilbronn problem.
// This file does not include or import the primary checker.
// See INDEPENDENT_COVER.md for the differences and completion requirements.
#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <limits>
#include <map>
#include <set>
#include <stdexcept>
#include <string>
#include <vector>

namespace audit {
using Int = std::int64_t;
using Big = __int128_t;
using Count = std::uint64_t;
constexpr int grid = 22, cell_count = grid*grid, anchor_count = 4*grid+4;
constexpr int words = (cell_count+63)/64, point_count = 10;
constexpr Int unit = Int(1)<<19, scale = grid*unit, cutoff = 46;
constexpr int triangle_count = 120;
constexpr int jacobi_passes = 8;

void require(bool condition, const char* message) {
  if (!condition) throw std::runtime_error(message);
}

struct Point { Int x, y; };
struct Region {
  Int left, bottom, right, top;
  std::vector<Point> vertices;
};
Region rectangle(Int x0, Int y0, Int x1, Int y1) {
  require(0<=x0 && x0<=x1 && x1<=grid && 0<=y0 && y0<=y1 && y1<=grid,
          "invalid coarse rectangle");
  Region result{x0,y0,x1,y1,{}};
  result.vertices.push_back({x0,y0});
  if (x1!=x0) result.vertices.push_back({x1,y0});
  if (y1!=y0) {
    result.vertices.push_back({x0,y1});
    if (x1!=x0) result.vertices.push_back({x1,y1});
  }
  return result;
}
Int oriented(Point a, Point b, Point c) {
  return a.x*(b.y-c.y) + b.x*(c.y-a.y) + c.x*(a.y-b.y);
}
Int magnitude(Int n) { return n<0 ? -n : n; }
bool compatible(const Region& a, const Region& b, const Region& c) {
  for (Point p:a.vertices) for (Point q:b.vertices) for (Point r:c.vertices)
    if (magnitude(oriented(p,q,r))>=cutoff) return true;
  return false;
}

using Mask = std::array<Count,words>;
Mask all_cells() {
  Mask result{};
  for (int c=0;c<cell_count;++c) result[c/64] |= Count(1)<<(c%64);
  return result;
}
void insert(Mask& mask, int c) { mask[c/64] |= Count(1)<<(c%64); }
bool member(const Mask& mask, int c) { return (mask[c/64]>>(c%64))&1; }
void intersect(Mask& a, const Mask& b) {
  for (int w=0;w<words;++w) a[w]&=b[w];
}

std::vector<Region> cells, anchors;
std::vector<unsigned char> fixed_three(anchor_count*anchor_count*anchor_count);
std::vector<Mask> fixed_pair(anchor_count*anchor_count);
std::vector<Mask> mixed_pair(anchor_count*cell_count);
std::vector<Mask> free_pair(cell_count*cell_count);
std::array<std::array<int,3>,triangle_count> triangles;

int fixed_key(int a,int b,int c) { return (a*anchor_count+b)*anchor_count+c; }
void prepare_regions() {
  for (int x=0;x<grid;++x) for (int y=0;y<grid;++y)
    cells.push_back(rectangle(x,y,x+1,y+1));
  for (int y=0;y<grid;++y) anchors.push_back(rectangle(0,y,0,y+1));
  for (int x=0;x<grid;++x) anchors.push_back(rectangle(x,0,x+1,0));
  for (int y=0;y<grid;++y) anchors.push_back(rectangle(grid,y,grid,y+1));
  for (int x=0;x<grid;++x) anchors.push_back(rectangle(x,grid,x+1,grid));
  anchors.push_back(rectangle(0,0,0,0));
  anchors.push_back(rectangle(grid,0,grid,0));
  anchors.push_back(rectangle(grid,grid,grid,grid));
  anchors.push_back(rectangle(0,grid,0,grid));
  require(int(cells.size())==cell_count && int(anchors.size())==anchor_count,
          "region inventory");
  int index=0;
  for (int a=0;a<point_count;++a) for (int b=a+1;b<point_count;++b)
    for (int c=b+1;c<point_count;++c) triangles[index++]={a,b,c};
  require(index==triangle_count,"triangle inventory");
}

void prepare_compatibility() {
  for (int a=0;a<anchor_count;++a) {
    for (int b=0;b<a;++b) {
      for (int c=0;c<b;++c) if (compatible(anchors[a],anchors[b],anchors[c])) {
        fixed_three[fixed_key(a,b,c)]=fixed_three[fixed_key(a,c,b)]=1;
        fixed_three[fixed_key(b,a,c)]=fixed_three[fixed_key(b,c,a)]=1;
        fixed_three[fixed_key(c,a,b)]=fixed_three[fixed_key(c,b,a)]=1;
      }
      for (int c=0;c<cell_count;++c) if (compatible(anchors[a],anchors[b],cells[c])) {
        insert(fixed_pair[a*anchor_count+b],c);
        insert(fixed_pair[b*anchor_count+a],c);
      }
    }
    for (int b=0;b<cell_count;++b) for (int c=0;c<b;++c)
      if (compatible(anchors[a],cells[b],cells[c])) {
        insert(mixed_pair[a*cell_count+b],c);
        insert(mixed_pair[a*cell_count+c],b);
      }
  }
  for (int a=0;a<cell_count;++a) for (int b=0;b<a;++b) for (int c=0;c<b;++c)
    if (compatible(cells[a],cells[b],cells[c])) {
      insert(free_pair[a*cell_count+b],c); insert(free_pair[b*cell_count+a],c);
      insert(free_pair[a*cell_count+c],b); insert(free_pair[c*cell_count+a],b);
      insert(free_pair[b*cell_count+c],a); insert(free_pair[c*cell_count+b],a);
    }
}

struct Interval { Int low, high; };
using Box = std::array<Interval,2*point_count>;
using Model = std::array<Interval,2*point_count>;
std::array<Model,8> models;

Big root_polynomial(Int x,Int d) {
  return 12*Big(x)*x*x - 27*Big(x)*x*d + 20*Big(x)*d*d - 4*Big(d)*d*d;
}
Interval enclose(Big low,Big high,Big denominator) {
  require(0<=low && low<=high && high<=denominator,"candidate rational enclosure");
  return {Int(low*scale/denominator),Int((high*scale+denominator-1)/denominator)};
}
Interval complement(Interval x) { return {scale-x.high,scale-x.low}; }
void prepare_models() {
  // f is increasing on [0,1/2], and the endpoint signs bracket its root.
  // Find the dyadic bracket independently rather than importing stored decimals.
  const Int denominator=Int(1)<<40;
  Int low=0,high=denominator/2;
  require(root_polynomial(low,denominator)<0 && root_polynomial(high,denominator)>0,
          "initial candidate root bracket");
  while (high-low>1) {
    Int middle=low+(high-low)/2;
    Big value=root_polynomial(middle,denominator);
    require(value!=0,"unexpected exact dyadic root");
    if (value<0) low=middle; else high=middle;
  }
  const Big square=Big(denominator)*denominator;
  const Interval zero{0,0},one{scale,scale};
  Interval g=enclose(low,high,denominator);
  Interval halfg=enclose(low,high,Big(2)*denominator);
  // Separate interval operations on 1-3g+2g^2, deliberately not a monotonicity shortcut.
  Interval a=enclose(square-3*Big(high)*denominator+2*Big(low)*low,
                     square-3*Big(low)*denominator+2*Big(high)*high,square);
  Model original{zero,a, a,zero, complement(halfg),zero, one,halfg,
                 one,complement(a), complement(a),one, halfg,one,
                 zero,complement(halfg), g,g, complement(g),complement(g)};
  int image=0;
  for (int swap=0;swap<2;++swap) for (int flipx=0;flipx<2;++flipx)
    for (int flipy=0;flipy<2;++flipy) {
      Model transformed{};
      for (int p=0;p<point_count;++p) {
        Interval x=original[2*p+swap],y=original[2*p+1-swap];
        transformed[2*p]=flipx?complement(x):x;
        transformed[2*p+1]=flipy?complement(y):y;
      }
      models[image++]=transformed;
    }
  require(image==8,"square symmetry inventory");
}

bool augment(int p,const std::array<unsigned,point_count>& edges,
             std::array<int,point_count>& matched,unsigned& seen) {
  for (int q=0;q<point_count;++q) if ((edges[p]>>q)&1U) {
    if ((seen>>q)&1U) continue;
    seen|=1U<<q;
    if (matched[q]<0 || augment(matched[q],edges,matched,seen)) {
      matched[q]=p;
      return true;
    }
  }
  return false;
}
bool covered_locally(const Box& box) {
  for (Interval v:box) if (1000*(v.high-v.low)>scale) return false;
  for (const Model& candidate:models) {
    std::array<unsigned,point_count> edges{};
    bool any_empty=false;
    for (int p=0;p<point_count;++p) {
      for (int q=0;q<point_count;++q) {
        bool allowed=true;
        for (int axis=0;axis<2;++axis) {
          Interval v=box[2*p+axis],reference=candidate[2*q+axis];
          if (2000*v.low<2000*reference.high-scale ||
              2000*v.high>2000*reference.low+scale) allowed=false;
        }
        if (allowed) edges[p]|=1U<<q;
      }
      if (!edges[p]) any_empty=true;
    }
    if (any_empty) continue;
    std::array<int,point_count> matched; matched.fill(-1);
    bool complete=true;
    for (int p=0;p<point_count;++p) {
      unsigned seen=0;
      if (!augment(p,edges,matched,seen)) {complete=false;break;}
    }
    if (complete) return true;
  }
  return false;
}

struct Threshold { Int numerator,denominator; bool permit_local; };
using Ordering = std::array<int,triangle_count>;

bool tighten(Box& box,const Ordering& ordering,const Threshold& threshold) {
  const Big target=Big(threshold.numerator)*scale*scale;
  for (int pass=0;pass<jacobi_passes;++pass) {
    // Derive all six cuts for one triangle from its old box, then apply together.
    bool changed=false;
    for (int t:ordering) {
      Box next=box;
      const auto& triangle=triangles[t];
      std::array<int,6> coordinates{},variable{};
      std::array<Int,6> value{};
      int varying=0;
      for (int j=0;j<3;++j) {
        coordinates[2*j]=2*triangle[j]; coordinates[2*j+1]=2*triangle[j]+1;
      }
      for (int j=0;j<6;++j) {
        Interval range=box[coordinates[j]];
        require(0<=range.low && range.low<=range.high && range.high<=scale,
                "fine box invariant");
        value[j]=range.low;
        if (range.low!=range.high) variable[varying++]=j;
      }
      Int minimum=std::numeric_limits<Int>::max(),maximum=std::numeric_limits<Int>::min();
      Int face_min[6][2],face_max[6][2];
      for (int j=0;j<6;++j) for (int side=0;side<2;++side) {
        face_min[j][side]=std::numeric_limits<Int>::max();
        face_max[j][side]=std::numeric_limits<Int>::min();
      }
      for (int corner=0;corner<(1<<varying);++corner) {
        for (int j=0;j<varying;++j) {
          int k=variable[j]; Interval range=box[coordinates[k]];
          value[k]=((corner>>j)&1)?range.high:range.low;
        }
        Int signed_value=oriented({value[0],value[1]},{value[2],value[3]},
                                  {value[4],value[5]});
        minimum=std::min(minimum,signed_value); maximum=std::max(maximum,signed_value);
        for (int j=0;j<varying;++j) {
          int k=variable[j],side=(corner>>j)&1;
          face_min[k][side]=std::min(face_min[k][side],signed_value);
          face_max[k][side]=std::max(face_max[k][side],signed_value);
        }
      }
      Int absolute_maximum=std::max(-minimum,maximum);
      if (Big(threshold.denominator)*absolute_maximum<=target) return true;
      for (int j=0;j<varying;++j) {
        int k=variable[j],coordinate=coordinates[k];
        Big at_low=Big(threshold.denominator)*std::max(-face_min[k][0],face_max[k][0]);
        Big at_high=Big(threshold.denominator)*std::max(-face_min[k][1],face_max[k][1]);
        Int width=box[coordinate].high-box[coordinate].low;
        if (at_low<target) {
          require(at_high>target,"increasing face interpolation");
          Int increment=Int((target-at_low)*width/(at_high-at_low));
          require(0<=increment && increment<=width,"lower outward rounding");
          next[coordinate].low=std::max(next[coordinate].low,box[coordinate].low+increment);
        }
        if (at_high<target) {
          require(at_low>target,"decreasing face interpolation");
          Int increment=Int((target-at_high)*width/(at_low-at_high));
          require(0<=increment && increment<=width,"upper outward rounding");
          next[coordinate].high=std::min(next[coordinate].high,box[coordinate].high-increment);
        }
        if (next[coordinate].low>next[coordinate].high) return true;
      }
      for (int k:coordinates)
        if (next[k].low!=box[k].low || next[k].high!=box[k].high) changed=true;
      box=next;
    }
    if (!changed) break;
  }
  return false;
}

struct Totals { Count patterns=0,search=0,roots=0,boxes=0,local=0,deferred=0,certified=0; };
struct UnresolvedRoot:std::runtime_error { using std::runtime_error::runtime_error; };
Count root_budget=1000000,current_pattern=0;
std::string current_family;
std::vector<int> current_anchors,current_cells;
std::ofstream deferred_roots;
std::array<Mask,cell_count> anchor_masks;
std::array<bool,cell_count> anchor_mask_ready{};
std::array<std::vector<int>,point_count> candidate_buffers;
using RootCoordinates = std::array<int,10>;
std::map<Count,std::vector<RootCoordinates>> root_lemmas;
const std::vector<RootCoordinates>* active_lemmas=nullptr;
Count lemma_count=0;
std::string lemma_manifest_sha256;

void load_root_lemmas(const char* path) {
  std::ifstream input(path);
  require(bool(input),"cannot open certified-root table");
  std::string schema;
  Int table_grid,table_num,table_den;
  require(bool(input>>schema>>table_grid>>table_num>>table_den>>lemma_count>>lemma_manifest_sha256),
          "malformed certified-root header");
  require(schema=="N10_ROOT_LEMMAS_V1" && table_grid==grid &&
          table_num==4653741958254LL && table_den==50000000000000LL,
          "certified-root domain or threshold mismatch");
  require(0<lemma_count && lemma_count<=1000000,"invalid certified-root count");
  require(lemma_manifest_sha256.size()==64,"invalid lemma-manifest digest length");
  for (char c:lemma_manifest_sha256)
    require(('0'<=c && c<='9') || ('a'<=c && c<='f'),"invalid lemma-manifest digest");
  std::set<std::array<Int,11>> seen;
  for (Count row_number=0;row_number<lemma_count;++row_number) {
    std::array<Int,11> row{};
    for (Int& value:row) require(bool(input>>value),"truncated certified-root row");
    require(row[0]>=0,"negative certified pattern");
    RootCoordinates points{};
    for (int j=0;j<10;++j) {
      require(0<=row[j+1] && row[j+1]<(j<6?anchor_count:cell_count),
              "certified-root region index out of bounds");
      points[j]=int(row[j+1]);
    }
    for (int j=7;j<10;++j) require(points[j-1]<points[j],"certified free cells not increasing");
    require(seen.insert(row).second,"duplicate certified-root row");
    root_lemmas[Count(row[0])].push_back(points);
  }
  std::string extra;
  require(!(input>>extra),"extra certified-root data");
  std::cout<<"N_ROOT_LEMMAS_LOADED count="<<lemma_count
           <<" manifest_sha256="<<lemma_manifest_sha256<<std::endl;
}

bool certified_root(const std::vector<int>& fixed,const std::vector<int>& chosen) {
  if (!active_lemmas) return false;
  require(current_family=="N" && fixed.size()==6 && chosen.size()==4,
          "certified-root use outside N");
  RootCoordinates key{};
  std::copy(fixed.begin(),fixed.end(),key.begin());
  std::copy(chosen.begin(),chosen.end(),key.begin()+6);
  return std::find(active_lemmas->begin(),active_lemmas->end(),key)!=active_lemmas->end();
}

Ordering triangle_order(const Box& box) {
  std::array<std::pair<Int,int>,triangle_count> keys{};
  for (int t=0;t<triangle_count;++t) {
    Point p[3];
    for (int j=0;j<3;++j) {
      int i=triangles[t][j];
      p[j]={box[2*i].low+box[2*i].high,box[2*i+1].low+box[2*i+1].high};
    }
    // Reverse triangle-number tie breaking differs from the primary checker.
    keys[t]={magnitude(oriented(p[0],p[1],p[2])),-t};
  }
  std::partial_sort(keys.begin(),keys.begin()+16,keys.end());
  Ordering ordering{};
  for (int t=0;t<triangle_count;++t) ordering[t]=-keys[t].second;
  return ordering;
}

void prove_root(Box initial,const Threshold& threshold,Totals& totals) {
  Ordering ordering=triangle_order(initial);
  std::vector<Box> pending{initial};
  Count visited=0;
  while (!pending.empty()) {
    Box box=pending.back(); pending.pop_back();
    ++totals.boxes;
    if (++visited>root_budget) throw UnresolvedRoot("box budget exceeded");
    if (threshold.permit_local && covered_locally(box)) {++totals.local;continue;}
    if (tighten(box,ordering,threshold)) continue;
    if (threshold.permit_local && covered_locally(box)) {++totals.local;continue;}
    int split=2*point_count-1;
    for (int k=2*point_count-2;k>=0;--k)
      if (box[k].high-box[k].low>box[split].high-box[split].low) split=k;
    Int width=box[split].high-box[split].low;
    if (width<=1) throw UnresolvedRoot("minimum interval width");
    Int middle=box[split].low+width/2;
    Box left=box,right=box;
    left[split].high=middle; right[split].low=middle;
    pending.push_back(right); pending.push_back(left);
  }
}

Box initial_box(const std::vector<int>& fixed,const std::vector<int>& chosen) {
  require(fixed.size()+chosen.size()==point_count,"root point count");
  Box box{};
  int p=0;
  auto append=[&](const Region& region) {
    box[2*p]={unit*region.left,unit*region.right};
    box[2*p+1]={unit*region.bottom,unit*region.top};
    ++p;
  };
  for (int a:fixed) append(anchors[a]);
  for (int c:chosen) append(cells[c]);
  return box;
}

bool allowed_anchors(const std::vector<int>& fixed,std::vector<int>& possible) {
  for (std::size_t a=0;a<fixed.size();++a)
    for (std::size_t b=0;b<a;++b) for (std::size_t c=0;c<b;++c)
      if (!fixed_three[fixed_key(fixed[a],fixed[b],fixed[c])]) return false;
  Mask mask=all_cells();
  for (std::size_t a=0;a<fixed.size();++a) for (std::size_t b=0;b<a;++b)
    intersect(mask,fixed_pair[fixed[a]*anchor_count+fixed[b]]);
  possible.clear();
  for (int c=0;c<cell_count;++c) if (member(mask,c)) possible.push_back(c);
  return possible.size()>=point_count-fixed.size();
}

void extend(const std::vector<int>& fixed,const std::vector<int>& possible,
            std::vector<int>& chosen,const Threshold& threshold,Totals& totals) {
  const std::size_t needed=point_count-fixed.size();
  for (std::size_t k=0;k<possible.size();++k) {
    int v=possible[k];
    ++totals.search;
    if (chosen.size()+1==needed) {
      chosen.push_back(v); ++totals.roots;
      current_cells=chosen;
      if (certified_root(fixed,chosen)) {
        ++totals.certified;
      } else try {
        prove_root(initial_box(fixed,chosen),threshold,totals);
      } catch (const UnresolvedRoot& failure) {
        if (!deferred_roots.is_open()) throw;
        ++totals.deferred;
        deferred_roots<<current_family<<'\t'<<current_pattern<<'\t';
        for (std::size_t j=0;j<fixed.size();++j) {if(j)deferred_roots<<',';deferred_roots<<fixed[j];}
        deferred_roots<<'\t';
        for (std::size_t j=0;j<chosen.size();++j) {if(j)deferred_roots<<',';deferred_roots<<chosen[j];}
        deferred_roots<<'\t'<<failure.what()<<'\n';
        deferred_roots.flush();
        require(bool(deferred_roots),"deferred root write failed");
      }
      chosen.pop_back();
      continue;
    }
    if (!anchor_mask_ready[v]) {
      anchor_masks[v]=all_cells();
      for (int a:fixed) intersect(anchor_masks[v],mixed_pair[a*cell_count+v]);
      anchor_mask_ready[v]=true;
    }
    Mask permitted=anchor_masks[v];
    for (int earlier:chosen) intersect(permitted,free_pair[earlier*cell_count+v]);
    std::vector<int>& next=candidate_buffers[chosen.size()+1];
    next.clear();
    for (std::size_t j=k+1;j<possible.size();++j)
      if (member(permitted,possible[j])) next.push_back(possible[j]);
    if (next.size()>=needed-chosen.size()-1) {
      chosen.push_back(v);
      extend(fixed,next,chosen,threshold,totals);
      chosen.pop_back();
    }
  }
}

template<class Visit> void enumerate_anchors(const std::string& family,Visit visit) {
  const int sw=4*grid,ne=4*grid+2,nw=4*grid+3;
  if (family=="III") visit(std::vector<int>{sw,nw,ne});
  if (family=="II")
    for (int left=0;left<grid;++left) for (int bottom=0;bottom<grid;++bottom)
      visit(std::vector<int>{ne,nw,left,grid+bottom});
  if (family=="C1" || family=="C2")
    for (int left=0;left<grid;++left) for (int bottom=0;bottom<grid;++bottom)
      for (int right=0;right<=left;++right) for (int top=0;top<=bottom;++top) {
        std::vector<int> pattern{sw};
        if (family=="C2") pattern.push_back(ne);
        pattern.insert(pattern.end(),{left,grid+bottom,2*grid+right,3*grid+top});
        visit(pattern);
      }
  if (family=="N")
    for (int low_left=0;low_left<grid;++low_left)
      for (int high_left=low_left+1;high_left<grid;++high_left)
        for (int low_bottom=0;low_bottom<grid;++low_bottom)
          for (int high_bottom=low_bottom+1;high_bottom<grid;++high_bottom)
            for (int right=low_left;right<=high_left;++right)
              for (int top=low_bottom;top<=high_bottom;++top)
                visit(std::vector<int>{low_left,high_left,grid+low_bottom,
                                      grid+high_bottom,2*grid+right,3*grid+top});
}

void print_failure_context() {
  std::cerr<<"family="<<current_family<<" pattern="<<current_pattern<<" anchors=";
  for (int a:current_anchors) std::cerr<<a<<',';
  std::cerr<<" free=";
  for (int c:current_cells) std::cerr<<c<<',';
  std::cerr<<'\n';
}
} // namespace audit

int main(int argc,char** argv) {
  using namespace audit;
  try {
    require(argc>=2 && argc<=5,"usage: independent_cover N|C1|C2|II|III [start stop] [receipt.tsv]");
    std::string family=argv[1];
    require(family=="N" || family=="C1" || family=="C2" || family=="II" || family=="III",
            "unknown family");
    Count start=argc>=3?std::stoull(argv[2]):0;
    Count stop=argc>=4?std::stoull(argv[3]):std::numeric_limits<Count>::max();
    require(start<stop,"empty requested range");
    if (const char* budget=std::getenv("INDEPENDENT_ROOT_BUDGET")) root_budget=std::stoull(budget);
    require(root_budget>0,"nonpositive root budget");
    std::ofstream receipt;
    if (argc==5) {
      receipt.open(argv[4]); require(bool(receipt),"cannot open receipt");
      receipt<<"family\tpattern\tanchors\troots\tsearch\tboxes\tlocal\tdeferred\tcertified\n";
    }
    if (const char* path=std::getenv("INDEPENDENT_DEFERRED_ROOTS")) {
      deferred_roots.open(path);require(bool(deferred_roots),"cannot open deferred root file");
      deferred_roots<<"family\tpattern\tanchors\tfree\treason\n";
    }
    auto started=std::chrono::steady_clock::now();
    if (family=="N") if (const char* path=std::getenv("N10_ROOT_LEMMAS")) load_root_lemmas(path);
    prepare_regions(); prepare_models(); prepare_compatibility();
    for (auto& buffer:candidate_buffers) buffer.reserve(cell_count);
    std::cout<<"INDEPENDENT_INITIALIZED grid="<<grid<<" scale="<<scale
             <<" jacobi_passes="<<jacobi_passes<<std::endl;
    const Threshold threshold=family=="N" ? Threshold{4653741958254LL,50000000000000LL,true}
                                           : Threshold{4653,50000,false};
    Totals totals;
    Count index=0;
    current_family=family;
    enumerate_anchors(family,[&](const std::vector<int>& fixed) {
      std::vector<int> possible;
      if (!allowed_anchors(fixed,possible)) return;
      Count this_index=index++;
      if (this_index<start || this_index>=stop) return;
      current_pattern=this_index; current_anchors=fixed; current_cells.clear();
      auto lemma_it=root_lemmas.find(this_index);
      active_lemmas=lemma_it==root_lemmas.end()?nullptr:&lemma_it->second;
      Totals before=totals;
      std::vector<int> chosen;
      anchor_mask_ready.fill(false);
      extend(fixed,possible,chosen,threshold,totals);
      ++totals.patterns;
      if (receipt.is_open()) {
        receipt<<family<<'\t'<<this_index<<'\t';
        for (std::size_t j=0;j<fixed.size();++j) {if(j)receipt<<',';receipt<<fixed[j];}
        receipt<<'\t'<<totals.roots-before.roots<<'\t'<<totals.search-before.search
               <<'\t'<<totals.boxes-before.boxes<<'\t'<<totals.local-before.local
               <<'\t'<<totals.deferred-before.deferred
               <<'\t'<<totals.certified-before.certified<<'\n';
        require(bool(receipt),"receipt write failed");
      }
      if (this_index%100==0) {
        auto ms=std::chrono::duration_cast<std::chrono::milliseconds>(
          std::chrono::steady_clock::now()-started).count();
        std::cout<<family<<"_INDEPENDENT_PROGRESS pattern="<<this_index
                 <<" roots="<<totals.roots<<" search="<<totals.search
                 <<" bb="<<totals.boxes<<" local="<<totals.local
                 <<" deferred="<<totals.deferred<<" certified="<<totals.certified
                 <<" ms="<<ms<<std::endl;
        if (receipt.is_open()) {receipt.flush();require(bool(receipt),"receipt flush failed");}
      }
    });
    require(index>0 && totals.patterns>0,"empty processed cover");
    require(totals.patterns==std::min(stop,index)-std::min(start,index),"range coverage mismatch");
    if (receipt.is_open()) {receipt.flush();require(bool(receipt),"final receipt flush failed");}
    if (totals.deferred) {
      std::cout<<family<<"_INDEPENDENT_RANGE_INCOMPLETE start="<<start<<" stop="<<std::min(stop,index)
               <<" total="<<index<<" patterns="<<totals.patterns<<" roots="<<totals.roots
               <<" search="<<totals.search<<" bb="<<totals.boxes<<" local="<<totals.local
               <<" deferred="<<totals.deferred<<" certified="<<totals.certified<<std::endl;
      return 3;
    }
    std::cout<<family<<"_INDEPENDENT_RANGE_PASS start="<<start<<" stop="<<std::min(stop,index)
             <<" total="<<index<<" patterns="<<totals.patterns<<" roots="<<totals.roots
             <<" search="<<totals.search<<" bb="<<totals.boxes<<" local="<<totals.local
             <<" certified="<<totals.certified<<std::endl;
    if (start==0 && stop>=index) std::cout<<family<<"_INDEPENDENT_COMPLETE_PASS"<<std::endl;
    return 0;
  } catch (const std::exception& error) {
    std::cerr<<"INDEPENDENT_FAIL_OR_INCOMPLETE: "<<error.what()<<'\n';
    print_failure_context();
    return 2;
  }
}
