// Exact integer-arithmetic upper-bound checker for square Heilbronn n=9.
// Compile: g++ -O3 -std=c++17 verify_global.cpp -o verify_global
// Usage: ./verify_global corners ; ./verify_global type1 [start stop]
// Mathematical interpretation and proof of coverage: GLOBAL_PROOF.md.
// The local stopping rule depends on LOCAL_PROOF.md / verify_local.py.
// No floating-point arithmetic is used in any mathematical decision.
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
using I=std::int64_t;
using Wide=__int128_t;
constexpr I M=20, F=16384, S=M*F;
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
std::array<Triple,84> triples;
void init_geometry(){
  for(int x=0;x<M;x++)for(int y=0;y<M;y++)cells.push_back(rect(x,y,x+1,y+1));
  for(int y=0;y<M;y++)anchors.push_back(rect(0,y,0,y+1));
  for(int x=0;x<M;x++)anchors.push_back(rect(x,0,x+1,0));
  for(int y=0;y<M;y++)anchors.push_back(rect(M,y,M,y+1));
  for(int x=0;x<M;x++)anchors.push_back(rect(x,M,x+1,M));
  int n=0;for(int a=0;a<9;a++)for(int b=a+1;b<9;b++)for(int c=b+1;c<9;c++)triples[n++]={a,b,c};
  need(n==84,"triangle count");
}
struct Box{std::array<I,18> l,h;};
using Template=std::array<std::array<I,2>,18>;
std::array<Template,8> templates;
void init_templates(){
  // Every coordinate is (a+b*sqrt(65))/80.
  const int aa[18]={0,80,30,0,80,45,30,80,0,50,20,60,35,0,0,80,80,50};
  const int bb[18]={0,-8,-2,0,0,-3,-2,0,0,2,4,-4,3,0,8,0,0,2};
  const I D=10000000,rl=80622577,rh=80622578;
  need(Wide(rl)*rl<Wide(65)*D*D&&Wide(rh)*rh>Wide(65)*D*D,"root isolation");
  Template base{};
  for(int k=0;k<18;k++){
    I nl=S*(I(aa[k])*D+I(bb[k])*(bb[k]>=0?rl:rh));
    I nh=S*(I(aa[k])*D+I(bb[k])*(bb[k]>=0?rh:rl));
    I den=80*D;
    need(nl>=0&&nh>=nl,"coordinate bounds");
    if(bb[k]==0){need(nl%den==0,"exact constant coordinate");base[k]={nl/den,nl/den};}
    else {need(nl/den==nh/den,"coordinate floor not isolated");base[k]={nl/den,nl/den+1};}
  }
  int t=0;
  for(int flip=0;flip<2;flip++)for(int rot=0;rot<4;rot++){
    auto out=base;
    for(int p=0;p<9;p++){
      auto x=base[2*p],y=base[2*p+1];
      if(flip)x={S-x[1],S-x[0]};
      for(int r=0;r<rot;r++){auto nx=std::array<I,2>{S-y[1],S-y[0]};y=x;x=nx;}
      out[2*p]=x;out[2*p+1]=y;
    }templates[t++]=out;
  }
}
bool local(const Box&b){
  for(int k=0;k<18;k++)if(100*(b.h[k]-b.l[k])>S)return false;
  for(const auto &t:templates){
    int used=0;bool good=true;
    for(int p=0;p<9;p++){
      int found=-1;
      for(int q=0;q<9;q++){
        if((used>>q)&1)continue;bool ok=true;
        for(int ax=0;ax<2;ax++){
          int k=2*p+ax,j=2*q+ax;
          if(200*b.l[k]<200*t[j][1]-S||200*b.h[k]>200*t[j][0]+S){ok=false;break;}
        }if(ok){found=q;break;}
      }
      if(found<0){good=false;break;}used|=1<<found;
    }if(good)return true;
  }return false;
}
struct Target{I num,den;bool use_local;};
bool contract(Box &b,const std::array<Triple,84>&order,const Target&t){
  I T=t.num*S*S;
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
      if(t.den*biggest<=T)return true;
      for(int j=0;j<nv;j++){
        int k=active[j],idx=ind[k];I low=t.den*mx[k][0],high=t.den*mx[k][1],w=b.h[idx]-b.l[idx];
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
struct Counts{std::uint64_t search=0,roots=0,bb=0,local=0,patterns=0;};
Box make_box(const std::vector<Rect>&fixed,const std::vector<int>&free){
  need(fixed.size()+free.size()==9,"nine points");Box b{};int idx=0;
  auto add=[&](const Rect&r){b.l[idx]=F*r.xl;b.h[idx++]=F*r.xh;b.l[idx]=F*r.yl;b.h[idx++]=F*r.yh;};
  for(auto r:fixed)add(r);for(int i:free)add(cells[i]);return b;
}
void prove_box(Box initial,const Target&t,Counts&cnt){
  std::array<std::pair<I,Triple>,84> keyed{};
  for(int k=0;k<84;k++){
    auto tri=triples[k];Point p[3];
    for(int j=0;j<3;j++){int i=tri[j];p[j]={initial.l[2*i]+initial.h[2*i],initial.l[2*i+1]+initial.h[2*i+1]};}
    keyed[k]={std::llabs(det(p[0],p[1],p[2])),tri};
  }
  std::sort(keyed.begin(),keyed.end());std::array<Triple,84>order{};for(int k=0;k<84;k++)order[k]=keyed[k].second;
  std::vector<Box> todo;todo.push_back(initial);std::uint64_t work=0;
  while(!todo.empty()){
    Box b=todo.back();todo.pop_back();cnt.bb++;work++;
    if(work>1000000)throw std::runtime_error("INCOMPLETE: per-root work limit");
    if(t.use_local&&local(b)){cnt.local++;continue;}
    if(contract(b,order,t))continue;
    if(t.use_local&&local(b)){cnt.local++;continue;}
    int idx=0;for(int k=1;k<18;k++)if(b.h[k]-b.l[k]>b.h[idx]-b.l[idx])idx=k;
    if(b.h[idx]-b.l[idx]<=1)throw std::runtime_error("INCOMPLETE: minimum integer box reached");
    I mid=(b.l[idx]+b.h[idx])/2;Box c=b;b.h[idx]=mid;c.l[idx]=mid;todo.push_back(b);todo.push_back(c);
  }
}
using Bits=std::array<std::uint64_t,7>;
std::vector<unsigned char> HT(80*80*80),GE(80*400*400);
std::vector<Bits> VV(80*80);
int hi(int a,int b,int c){return (a*80+b)*80+c;}
int gi(int a,int b,int c){return (a*400+b)*400+c;}
void precompute(){
  for(int a=0;a<80;a++){
    for(int b=0;b<a;b++){
      for(int c=0;c<b;c++){
        bool ok=mxdet(anchors[a],anchors[b],anchors[c])>=44;
        int ar[3]={a,b,c};std::sort(ar,ar+3);do{HT[hi(ar[0],ar[1],ar[2])]=ok;}while(std::next_permutation(ar,ar+3));
      }
      for(int c=0;c<400;c++)if(mxdet(anchors[a],anchors[b],cells[c])>=44)VV[a*80+b][c/64]|=std::uint64_t(1)<<(c%64);
      VV[b*80+a]=VV[a*80+b];
    }
    for(int b=0;b<400;b++)for(int c=0;c<b;c++)if(mxdet(anchors[a],cells[b],cells[c])>=44)GE[gi(a,b,c)]=GE[gi(a,c,b)]=1;
  }
}
void type1_search(const std::array<int,5>&pat,const std::vector<int>&initial,Counts&cnt){
  std::vector<Rect> fixed;for(int a:pat)fixed.push_back(anchors[a]);
  int choices[5][400]{};int lengths[5]{},pos[5]{};int path[4]{};
  lengths[0]=int(initial.size());for(int i=0;i<lengths[0];i++)choices[0][i]=initial[i];int depth=0;
  while(depth>=0){
    if(pos[depth]>=lengths[depth]){depth--;continue;}
    int ix=pos[depth]++,v=choices[depth][ix];path[depth]=v;cnt.search++;
    if(depth==3){cnt.roots++;std::vector<int>free(path,path+4);prove_box(make_box(fixed,free),{439,4000,true},cnt);continue;}
    int n=0;
    for(int it=ix+1;it<lengths[depth];it++){
      int w=choices[depth][it];bool ok=true;
      for(int a:pat)if(!GE[gi(a,v,w)]){ok=false;break;}
      if(!ok)continue;
      for(int j=0;j<depth;j++)if(mxdet(cells[path[j]],cells[v],cells[w])<44){ok=false;break;}
      if(ok)choices[depth+1][n++]=w;
    }
    if(n>=3-depth){depth++;lengths[depth]=n;pos[depth]=0;}
  }
}
void run_type1(std::uint64_t start,std::uint64_t stop){
  precompute();Counts cnt;std::uint64_t raw=0,index=0;auto t0=std::chrono::steady_clock::now();
  for(int j=0;j<20;j++)for(int m=j+1;m<20;m++)for(int i=0;i<20;i++){
    int a=20+i;if(!HT[hi(j,m,a)])continue;
    for(int l=i;l<20;l++){
      int b=60+l;if(!HT[hi(j,m,b)]||!HT[hi(j,a,b)]||!HT[hi(m,a,b)])continue;
      for(int k=0;k<20;k++){
        int c=40+k;std::array<int,5>pat{j,a,c,b,m};bool ok=true;
        for(int u=0;u<5;u++)for(int v=0;v<u;v++)for(int w=0;w<v;w++)if(!HT[hi(pat[u],pat[v],pat[w])])ok=false;
        if(!ok)continue;raw++;
        Bits bits=VV[j*80+m];for(int u=0;u<5;u++)for(int v=0;v<u;v++)for(int w=0;w<7;w++)bits[w]&=VV[pat[u]*80+pat[v]][w];
        std::vector<int>possible;for(int x=0;x<400;x++)if((bits[x/64]>>(x%64))&1)possible.push_back(x);
        if(possible.size()<4)continue;
        auto current=index++;
        if(current<start||current>=stop)continue;
        type1_search(pat,possible,cnt);cnt.patterns++;
        if(current%1000==0){auto ms=std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now()-t0).count();
          std::cout<<"TYPE1_PROGRESS pattern="<<current<<" roots="<<cnt.roots<<" bb="<<cnt.bb<<" local="<<cnt.local<<" ms="<<ms<<std::endl;}
      }
    }
  }
  need(raw==331472&&index==330988,"pattern-count cross-check");
  std::cout<<"TYPE1_RANGE_PASS start="<<start<<" stop="<<std::min(stop,index)<<" patterns="<<cnt.patterns<<" roots="<<cnt.roots<<" search="<<cnt.search<<" bb="<<cnt.bb<<" local="<<cnt.local<<std::endl;
  if(start==0&&stop>=index)std::cout<<"TYPE1_COMPLETE_PASS"<<std::endl;
}
void corner_pattern(const std::vector<Rect>&fixed,const Target&t,Counts&cnt){
  int na=int(fixed.size()),nf=9-na;
  for(int a=0;a<na;a++)for(int b=0;b<a;b++)for(int c=0;c<b;c++)if(mxdet(fixed[a],fixed[b],fixed[c])<44)return;
  std::vector<int>allowed;
  for(int x=0;x<400;x++){
    bool ok=true;for(int a=0;a<na;a++)for(int b=0;b<a;b++)if(mxdet(cells[x],fixed[a],fixed[b])<44)ok=false;
    if(ok)allowed.push_back(x);
  }
  bool edge[400][400]{};
  for(int ia=0;ia<int(allowed.size());ia++)for(int ib=0;ib<ia;ib++){
    int a=allowed[ia],b=allowed[ib];bool ok=true;
    for(auto r:fixed)if(mxdet(cells[a],cells[b],r)<44){ok=false;break;}
    edge[a][b]=edge[b][a]=ok;
  }
  int choices[7][400]{},lengths[7]{},pos[7]{},path[6]{};
  lengths[0]=int(allowed.size());for(int i=0;i<lengths[0];i++)choices[0][i]=allowed[i];int depth=0;
  while(depth>=0){
    if(pos[depth]>=lengths[depth]){depth--;continue;}
    int ix=pos[depth]++,v=choices[depth][ix];path[depth]=v;cnt.search++;
    if(depth==nf-1){cnt.roots++;std::vector<int>free(path,path+nf);prove_box(make_box(fixed,free),t,cnt);continue;}
    int n=0;
    for(int it=ix+1;it<lengths[depth];it++){
      int w=choices[depth][it];if(!edge[v][w])continue;bool ok=true;
      for(int j=0;j<depth;j++)if(mxdet(cells[path[j]],cells[v],cells[w])<44){ok=false;break;}
      if(ok)choices[depth+1][n++]=w;
    }
    if(n>=nf-1-depth){depth++;lengths[depth]=n;pos[depth]=0;}
  }
}
void run_corners(){
  Counts iii;corner_pattern({rect(0,0,0,0),rect(0,M,0,M),rect(M,M,M,M)},{54,500,false},iii);
  need(iii.roots==12326&&iii.search==2107632,"type III independent coverage counts");
  std::cout<<"TYPE3_COMPLETE_PASS roots="<<iii.roots<<" search="<<iii.search<<" bb="<<iii.bb<<std::endl;
  Counts ii;
  for(int j=0;j<20;j++){
    for(int i=0;i<20;i++){corner_pattern({rect(M,M,M,M),rect(0,M,0,M),anchors[j],anchors[20+i]},{274,2500,false},ii);ii.patterns++;}
    std::cout<<"TYPE2_PROGRESS row="<<j<<" roots="<<ii.roots<<std::endl;
  }
  need(ii.patterns==400&&ii.roots==356024&&ii.search==20903391,"type II independent coverage counts");
  std::cout<<"TYPE2_COMPLETE_PASS patterns="<<ii.patterns<<" roots="<<ii.roots<<" search="<<ii.search<<" bb="<<ii.bb<<std::endl;
}
int main(int argc,char**argv){
  try{
    init_geometry();init_templates();
    if(argc>=2&&std::string(argv[1])=="corners")run_corners();
    else if(argc>=2&&std::string(argv[1])=="type1"){
      std::uint64_t lo=argc>2?std::stoull(argv[2]):0,hi=argc>3?std::stoull(argv[3]):330988;
      need(lo<=hi&&hi<=330988,"requested range");run_type1(lo,hi);
    }else throw std::runtime_error("Usage: verify_global corners | type1 [start stop]");
    return 0;
  }catch(const std::exception&e){std::cerr<<"FAIL_OR_INCOMPLETE: "<<e.what()<<std::endl;return 1;}
}
