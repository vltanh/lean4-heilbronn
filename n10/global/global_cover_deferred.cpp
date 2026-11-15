// Exact n=10 cover with fail-closed recording of difficult roots.
// DEFERRED_ROOTS records initial boxes; any deferral forbids RANGE_PASS.
// The optional FREE_TRIPLE_CACHE accelerates exactly the same grid predicates.
// Set PATTERN_RECEIPT to write one TSV row after each completed pattern.
// Derived from exact/verify_global.cpp (n=9), with new domains and thresholds.
// NO fixed orientation, candidate symmetry, or boundary saturation is assumed.
// A successful RANGE is not COMPLETE unless all surviving anchor patterns ran.
// See GLOBAL_COVER.md. Local leaves require seed/verify_n10.py.
#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>
#include <fstream>
using I=std::int64_t;
using Wide=__int128_t;
constexpr I M=22, F=1048576, S=M*F;
constexpr int NC=M*M, N=10, NT=120;
constexpr I CUT=46;
constexpr int NA=4*M+4, NW=(NC+63)/64;
std::ofstream journal, receipt, deferred_roots; bool use_free_cache=false; I pattern_id=0; std::uint64_t root_limit=1000000;
void need(bool p,const char* msg){if(!p)throw std::runtime_error(msg);}
struct Point{I x,y;};
struct Rect{I xl,yl,xh,yh; std::array<Point,4> v; int n;};
Rect rect(I xl,I yl,I xh,I yh){
  need(0<=xl&&xl<=xh&&xh<=M&&0<=yl&&yl<=yh&&yh<=M,"grid rectangle");
  Rect r{xl,yl,xh,yh,{},0};
  for(I x: {xl,xh}) for(I y: {yl,yh}){
    bool seen=false;for(int j=0;j<r.n;j++)if(r.v[j].x==x&&r.v[j].y==y)seen=true;
    if(!seen)r.v[r.n++]={x,y};
  }return r;
}
I det(Point a,Point b,Point c){return (b.x-a.x)*(c.y-a.y)-(b.y-a.y)*(c.x-a.x);}
// Exact corner maximum; for fixed a,b the best/worst c is chosen by signs.
I mxdet(const Rect&a,const Rect&b,const Rect&c){
  I ans=0;
  for(int i=0;i<a.n;i++)for(int j=0;j<b.n;j++){
    Point p=a.v[i],q=b.v[j]; I u=q.x-p.x,v=q.y-p.y;
    Point hi{v>=0?c.xl:c.xh,u>=0?c.yh:c.yl};
    Point lo{v>=0?c.xh:c.xl,u>=0?c.yl:c.yh};
    ans=std::max<I>(ans,std::max<I>(std::llabs(det(p,q,hi)),std::llabs(det(p,q,lo))));
  }return ans;
}
std::vector<Rect> cells,anchors;
using Triple=std::array<int,3>;
std::array<Triple,120> triples;
void init_geometry(){
  for(int x=0;x<M;x++)for(int y=0;y<M;y++)cells.push_back(rect(x,y,x+1,y+1));
  for(int y=0;y<M;y++)anchors.push_back(rect(0,y,0,y+1));
  for(int x=0;x<M;x++)anchors.push_back(rect(x,0,x+1,0));
  for(int y=0;y<M;y++)anchors.push_back(rect(M,y,M,y+1));
  for(int x=0;x<M;x++)anchors.push_back(rect(x,M,x+1,M));
  for(auto p:std::array<Point,4>{{{0,0},{M,0},{M,M},{0,M}}})anchors.push_back(rect(p.x,p.y,p.x,p.y));
  int n=0;for(int a=0;a<10;a++)for(int b=a+1;b<10;b++)for(int c=b+1;c<10;c++)triples[n++]={a,b,c};
  need(n==120,"triangle count");
}
struct Box{std::array<I,20> l,h;};
using Template=std::array<std::array<I,2>,20>;
std::array<Template,8> templates;
void init_templates(){
 const I D=1000000000000LL,gl=315611137608LL,gu=315611137609LL;
 auto poly=[&](I x){return 12*Wide(x)*x*x-27*Wide(x)*x*D+20*Wide(x)*D*D-4*Wide(D)*D*D;};
 need(poly(gl)<0&&poly(gu)>0,"candidate root bracket");
 const Wide den=2*Wide(D)*D;
 auto aval=[&](I x){return den-6*Wide(x)*D+4*Wide(x)*x;};
 auto enc=[&](Wide lo,Wide hi){need(0<=lo&&lo<=hi&&hi<=den,"candidate enclosure");return std::array<I,2>{I(lo*S/den),I((hi*S+den-1)/den)};};
 auto z=enc(0,0),one=enc(den,den),a=enc(aval(gu),aval(gl)),b=enc(Wide(gl)*D,Wide(gu)*D),g=enc(2*Wide(gl)*D,2*Wide(gu)*D);
 auto comp=[](std::array<I,2>x){return std::array<I,2>{S-x[1],S-x[0]};};
 Template base={z,a,a,z,comp(b),z,one,b,one,comp(a),comp(a),one,b,one,z,comp(b),g,g,comp(g),comp(g)};
 int k=0;for(int flip=0;flip<2;flip++)for(int rot=0;rot<4;rot++){
  Template out=base;for(int p=0;p<N;p++){
   auto x=base[2*p],y=base[2*p+1];if(flip)x=comp(x);
   for(int j=0;j<rot;j++){auto nx=comp(y);y=x;x=nx;}
   out[2*p]=x;out[2*p+1]=y;
  }templates[k++]=out;
 }
}
bool local(const Box&b){
 for(int k=0;k<20;k++)if(1000*(b.h[k]-b.l[k])>S)return false;
 for(auto &t:templates){int used=0;bool good=true;
  for(int p=0;p<N;p++){int found=-1;
   for(int q=0;q<N;q++)if(!((used>>q)&1)){
    bool ok=true;for(int ax=0;ax<2;ax++){int k=2*p+ax,j=2*q+ax;
     if(2000*b.l[k]<2000*t[j][1]-S||2000*b.h[k]>2000*t[j][0]+S){ok=false;break;}
    }if(ok){found=q;break;}
   }if(found<0){good=false;break;}used|=1<<found;
  }if(good)return true;
 }return false;
}
struct Target{I num,den;bool use_local;};
bool contract(Box &b,const std::array<Triple,120>&order,const Target&t){
  Wide T=Wide(t.num)*S*S;
  for(int round=0;round<8;round++){
    bool changed=false;
    for(const auto &tri:order){
      int ind[6];for(int j=0;j<3;j++){ind[2*j]=2*tri[j];ind[2*j+1]=2*tri[j]+1;}
      int active[6],nv=0;I val[6],mx[6][2]{};I biggest=0;
      for(int k=0;k<6;k++){
        val[k]=b.l[ind[k]];
        if(b.l[ind[k]]<b.h[ind[k]])active[nv++]=k;
        need(b.l[ind[k]]<=b.h[ind[k]]&&b.l[ind[k]]>=0&&b.h[ind[k]]<=S,"box invariant");
      }
      for(int mask=0;mask<(1<<nv);mask++){
        for(int j=0;j<nv;j++){int k=active[j];val[k]=((mask>>j)&1)?b.h[ind[k]]:b.l[ind[k]];}
        I z=std::llabs((val[2]-val[0])*(val[5]-val[1])-(val[3]-val[1])*(val[4]-val[0]));
        biggest=std::max(biggest,z);
        for(int j=0;j<nv;j++){int k=active[j],side=(mask>>j)&1;mx[k][side]=std::max(mx[k][side],z);}
      }
      if(Wide(t.den)*biggest<=T)return true;
      for(int j=0;j<nv;j++){
        int k=active[j],idx=ind[k];Wide low=Wide(t.den)*mx[k][0],high=Wide(t.den)*mx[k][1];I w=b.h[idx]-b.l[idx];
        if(low<T){
          need(high>T,"contraction slope");I d=I(Wide(T-low)*w/(high-low));need(0<=d&&d<=w,"rounding range");
          if(d){b.l[idx]+=d;changed=true;}
        }else if(high<T){
          need(low>T,"contraction slope");I d=I(Wide(T-high)*w/(low-high));need(0<=d&&d<=w,"rounding range");
          if(d){b.h[idx]-=d;changed=true;}
        }
      }
    }if(!changed)break;
  }return false;
}
struct Counts{std::uint64_t search=0,roots=0,bb=0,local=0,patterns=0,deferred=0;};
Box make_box(const std::vector<Rect>&fixed,const std::vector<int>&free){
  need(fixed.size()+free.size()==10,"ten points");Box b{};int idx=0;
  auto add=[&](const Rect&r){b.l[idx]=F*r.xl;b.h[idx++]=F*r.xh;b.l[idx]=F*r.yl;b.h[idx++]=F*r.yh;};
  for(auto r:fixed)add(r);for(int i:free)add(cells[i]);return b;
}
void prove_box(Box initial,const Target&t,Counts&cnt){
  std::array<std::pair<I,Triple>,120> keyed{};
  for(int k=0;k<120;k++){
    auto tri=triples[k];Point p[3];
    for(int j=0;j<3;j++){int i=tri[j];p[j]={initial.l[2*i]+initial.h[2*i],initial.l[2*i+1]+initial.h[2*i+1]};}
    keyed[k]={std::llabs(det(p[0],p[1],p[2])),tri};
  }
  std::sort(keyed.begin(),keyed.end());std::array<Triple,120>order{};for(int k=0;k<120;k++)order[k]=keyed[k].second;
  std::vector<Box> todo;todo.push_back(initial);std::uint64_t work=0;
  while(!todo.empty()){
    Box b=todo.back();todo.pop_back();cnt.bb++;work++;
    if(work>root_limit)throw std::runtime_error("INCOMPLETE: per-root work limit");
    
    if(t.use_local&&local(b)){cnt.local++;continue;}
    if(contract(b,order,t))continue;
    if(t.use_local&&local(b)){cnt.local++;continue;}
    
    int idx=0;for(int k=1;k<20;k++)if(b.h[k]-b.l[k]>b.h[idx]-b.l[idx])idx=k;
    if(b.h[idx]-b.l[idx]<=1)throw std::runtime_error("INCOMPLETE: minimum integer box reached");
    I mid=(b.l[idx]+b.h[idx])/2;Box c=b;b.h[idx]=mid;c.l[idx]=mid;todo.push_back(b);todo.push_back(c);
  }
}

using Bits=std::array<uint64_t,NW>;
std::vector<unsigned char> HT(NA*NA*NA);
std::vector<Bits> VV(NA*NA), GE(NA*NC), FG;
void precompute_free(){
 if(!use_free_cache)return;
 FG.resize(NC*NC);
 for(int a=2;a<NC;a++)for(int b=1;b<a;b++)for(int c=0;c<b;c++){
  if(mxdet(cells[a],cells[b],cells[c])<CUT)continue;
  FG[a*NC+b][c/64]|=uint64_t(1)<<(c%64);
  FG[a*NC+c][b/64]|=uint64_t(1)<<(b%64);
  FG[b*NC+c][a/64]|=uint64_t(1)<<(a%64);
 }
 for(int a=0;a<NC;a++)for(int b=0;b<a;b++)FG[b*NC+a]=FG[a*NC+b];
}
int hi(int a,int b,int c){return (a*NA+b)*NA+c;}
void precompute(){
 for(int a=0;a<NA;a++){
  for(int b=0;b<a;b++){
   for(int c=0;c<b;c++){
    bool ok=mxdet(anchors[a],anchors[b],anchors[c])>=CUT;
    int ar[3]={c,b,a};do{HT[hi(ar[0],ar[1],ar[2])]=ok;}while(std::next_permutation(ar,ar+3));
   }
   for(int c=0;c<NC;c++)if(mxdet(anchors[a],anchors[b],cells[c])>=CUT)VV[a*NA+b][c/64]|=uint64_t(1)<<(c%64);
   VV[b*NA+a]=VV[a*NA+b];
  }
  for(int b=0;b<NC;b++)for(int c=0;c<b;c++)if(mxdet(anchors[a],cells[b],cells[c])>=CUT){
   GE[a*NC+b][c/64]|=uint64_t(1)<<(c%64);GE[a*NC+c][b/64]|=uint64_t(1)<<(b%64);
  }
 }
}
bool allowed_pattern(const std::vector<int>&pat,std::vector<int>&possible){
 for(int i=0;i<int(pat.size());i++)for(int j=0;j<i;j++)for(int k=0;k<j;k++)if(!HT[hi(pat[i],pat[j],pat[k])])return false;
 Bits b; b.fill(~uint64_t(0));
 for(int i=0;i<int(pat.size());i++)for(int j=0;j<i;j++)for(int w=0;w<NW;w++)b[w]&=VV[pat[i]*NA+pat[j]][w];
 possible.clear();for(int i=0;i<NC;i++)if((b[i/64]>>(i%64))&1)possible.push_back(i);
 return possible.size()>=N-pat.size();
}
void cover_pattern(const std::vector<int>&pat,const std::vector<int>&initial,const Target&t,Counts&cnt){
 int nf=N-int(pat.size());need(1<=nf&&nf<=7,"free count");
 std::vector<Rect> fixed;for(int a:pat)fixed.push_back(anchors[a]);
 int choices[8][NC]{},lengths[8]{},pos[8]{},path[7]{};
 lengths[0]=int(initial.size());for(int i=0;i<lengths[0];i++)choices[0][i]=initial[i];int depth=0;
 while(depth>=0){
  if(pos[depth]>=lengths[depth]){depth--;continue;}
  int ix=pos[depth]++,v=choices[depth][ix];path[depth]=v;cnt.search++;
  if(depth==nf-1){
   cnt.roots++;std::vector<int>free(path,path+nf);
   if(journal.is_open()){journal<<pattern_id;for(int a:pat)journal<<" "<<a;journal<<" |";for(int a:free)journal<<" "<<a;journal<<"\n";}
   try { prove_box(make_box(fixed,free),t,cnt); }
   catch (const std::runtime_error &e) {
    const std::string message=e.what();
    if (!deferred_roots.is_open() || message.rfind("INCOMPLETE:",0)!=0) throw;
    ++cnt.deferred;
    deferred_roots<<pattern_id;for(int a:pat)deferred_roots<<" "<<a;
    deferred_roots<<" |";for(int a:free)deferred_roots<<" "<<a;
    deferred_roots<<std::endl;
    std::cout<<"DEFERRED_ROOT pattern="<<pattern_id<<" count="<<cnt.deferred<<" reason="<<message<<std::endl;
   }
   continue;
  }
  Bits bits;bits.fill(~uint64_t(0));for(int a:pat)for(int w=0;w<NW;w++)bits[w]&=GE[a*NC+v][w];
  if(use_free_cache)for(int j=0;j<depth;j++)for(int w=0;w<NW;w++)bits[w]&=FG[path[j]*NC+v][w];
  int n=0;for(int it=ix+1;it<lengths[depth];it++){
   int w=choices[depth][it];if(!((bits[w/64]>>(w%64))&1))continue;
   bool ok=true;if(!use_free_cache)for(int j=0;j<depth;j++)if(mxdet(cells[path[j]],cells[v],cells[w])<CUT){ok=false;break;}
   if(ok)choices[depth+1][n++]=w;
  }
  if(n>=nf-1-depth){depth++;lengths[depth]=n;pos[depth]=0;}
 }
}
int main(int argc,char**argv){
 try{
  need(argc>=2,"usage: global_cover III|II|C1|C2|N [start stop] [journal]");
  std::string family=argv[1];need(family=="III"||family=="II"||family=="C1"||family=="C2"||family=="N","family");
  uint64_t start=argc>2?std::stoull(argv[2]):0,stop=argc>3?std::stoull(argv[3]):~uint64_t(0);need(start<stop,"nonempty range");
  if(argc>4){journal.open(argv[4]);need(bool(journal),"journal open");}
  if(const char* e=std::getenv("ROOT_BUDGET"))root_limit=std::stoull(e);
  if(const char* e=std::getenv("FREE_TRIPLE_CACHE"))use_free_cache=std::string(e)=="1";
  if(const char* e=std::getenv("PATTERN_RECEIPT")){
   receipt.open(e);need(bool(receipt),"pattern receipt open");
   receipt<<"pattern\tanchors\tpossible_cells\troots\tsearch\tbb\tlocal\tstatus\n";
  }
  if(const char* e=std::getenv("DEFERRED_ROOTS")) {
   deferred_roots.open(e);need(bool(deferred_roots),"deferred root file open");
  }
  init_geometry();init_templates();precompute();precompute_free();
  Counts cnt;uint64_t index=0;std::vector<int>possible;auto t0=std::chrono::steady_clock::now();
  Target target=family=="N"?Target{4653741958254LL,50000000000000LL,true}:Target{4653,50000,false};
  auto test=[&](std::vector<int>pat){
   if(!allowed_pattern(pat,possible))return;
   uint64_t current=index++;if(current<start||current>=stop)return;pattern_id=current;
   Counts before=cnt;
   cover_pattern(pat,possible,target,cnt);cnt.patterns++;
   if(receipt.is_open()){
    receipt<<current<<"\t";for(size_t j=0;j<pat.size();j++){if(j)receipt<<",";receipt<<pat[j];}
    receipt<<"\t"<<possible.size()<<"\t"<<cnt.roots-before.roots<<"\t"<<cnt.search-before.search
     <<"\t"<<cnt.bb-before.bb<<"\t"<<cnt.local-before.local<<"\t"<<(cnt.deferred==before.deferred?"PASS":"DEFERRED")<<"\n";receipt.flush();
   }
   if(current%100==0){auto ms=std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now()-t0).count();
    std::cout<<family<<"_PROGRESS pattern="<<current<<" roots="<<cnt.roots<<" search="<<cnt.search<<" bb="<<cnt.bb<<" local="<<cnt.local<<" ms="<<ms<<std::endl;}
  };
  if(family=="III")test({4*M,4*M+3,4*M+2});
  if(family=="II")for(int j=0;j<M;j++)for(int i=0;i<M;i++)test({4*M+2,4*M+3,j,M+i});
  if(family=="C1"||family=="C2")for(int h=0;h<M;h++)for(int c=0;c<M;c++)for(int d=0;d<=h;d++)for(int f=0;f<=c;f++){
   if(family=="C1")test({4*M,h,M+c,2*M+d,3*M+f});
   else test({4*M,4*M+2,h,M+c,2*M+d,3*M+f});
  }
  if(family=="N")for(int a=0;a<M;a++)for(int h=a+1;h<M;h++)for(int b=0;b<M;b++)for(int c=b+1;c<M;c++){
   if(!HT[hi(a,h,M+b)]||!HT[hi(a,h,M+c)]||!HT[hi(a,M+b,M+c)]||!HT[hi(h,M+b,M+c)])continue;
   for(int d=a;d<=h;d++){
    bool ok=true;std::array<int,4>p{a,h,M+b,M+c};for(int j=0;j<4;j++)for(int k=0;k<j;k++)if(!HT[hi(p[j],p[k],2*M+d)])ok=false;
    if(!ok)continue;for(int f=b;f<=c;f++)test({a,h,M+b,M+c,2*M+d,3*M+f});
   }
  }
  need(index>0&&cnt.patterns>0,"empty processed cover");
  need(cnt.patterns==std::min(stop,index)-std::min(start,index),"coverage count");
  if(cnt.deferred) {
   std::cout<<family<<"_INCOMPLETE_COVER start="<<start<<" stop="<<std::min(stop,index)<<" total="<<index
    <<" patterns="<<cnt.patterns<<" roots="<<cnt.roots<<" search="<<cnt.search<<" bb="<<cnt.bb
    <<" local="<<cnt.local<<" unresolved_roots="<<cnt.deferred<<std::endl;
   return 3;
  }
  std::cout<<family<<"_RANGE_PASS start="<<start<<" stop="<<std::min(stop,index)<<" total="<<index<<" patterns="<<cnt.patterns<<" roots="<<cnt.roots<<" search="<<cnt.search<<" bb="<<cnt.bb<<" local="<<cnt.local<<std::endl;
  if(start==0&&stop>=index)std::cout<<family<<"_COMPLETE_PASS"<<std::endl;
 }catch(const std::exception&e){std::cerr<<"FAIL_OR_INCOMPLETE: "<<e.what()<<std::endl;return 2;}
}
