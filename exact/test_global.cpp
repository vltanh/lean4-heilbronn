// Independent regression tests; not a substitute for the exhaustive proof.
#define main proof_checker_main
#include "verify_global.cpp"
#undef main
std::uint64_t rng_state=0x7324f5a190b6c8d3ULL;
std::uint64_t rnd(){rng_state=rng_state*6364136223846793005ULL+1442695040888963407ULL;return rng_state;}
Rect random_rect(){I a=rnd()%21,b=rnd()%21,c=rnd()%21,d=rnd()%21;return rect(std::min(a,b),std::min(c,d),std::max(a,b),std::max(c,d));}
int main(){try{
  init_geometry();init_templates();
  for(int q=0;q<20000;q++){
    auto a=random_rect(),b=random_rect(),c=random_rect();I brute=0;
    for(int i=0;i<a.n;i++)for(int j=0;j<b.n;j++)for(int k=0;k<c.n;k++)brute=std::max<I>(brute,std::llabs(det(a.v[i],b.v[j],c.v[k])));
    need(brute==mxdet(a,b,c),"corner maximum mismatch");
  }
  Box candidate{};
  for(int k=0;k<18;k++){candidate.l[k]=templates[0][k][0];candidate.h[k]=templates[0][k][1];}
  need(local(candidate),"candidate not accepted by local rule");
  auto cp=candidate;need(!contract(cp,triples,{439,4000,true}),"candidate incorrectly excluded");
  Box broad{};broad.l.fill(0);broad.h.fill(S);
  need(!local(broad),"whole cube incorrectly local");
  need(!contract(broad,triples,{439,4000,true}),"whole cube incorrectly excluded");
  Box zero{};zero.l.fill(0);zero.h.fill(0);need(contract(zero,triples,{439,4000,false}),"zero configuration not excluded");
  int valid=0;
  for(int q=0;q<4000;q++){
    std::array<I,18> point{};for(auto &x:point)x=I(rnd()%(S+1));
    I minD=S*S;
    for(auto t:triples){Point p[3];for(int j=0;j<3;j++)p[j]={point[2*t[j]],point[2*t[j]+1]};minD=std::min<I>(minD,std::llabs(det(p[0],p[1],p[2])));}
    if(10000*minD<=S*S)continue;
    Box box{};
    for(int k=0;k<18;k++){
      I w=1+I(rnd()%(S/5));box.l[k]=std::max<I>(0,point[k]-w);box.h[k]=std::min<I>(S,point[k]+w);
    }
    need(!contract(box,triples,{1,10000,false}),"feasible witness excluded");
    for(int k=0;k<18;k++)need(box.l[k]<=point[k]&&point[k]<=box.h[k],"feasible witness contracted away");
    valid++;
  }
  std::cout<<"SELFTEST_PASS corner_maxima=20000 feasible_witnesses="<<valid<<" candidate_preserved=1 broad_box_preserved=1 zero_excluded=1"<<std::endl;
  return 0;
}catch(const std::exception&e){std::cerr<<"SELFTEST_FAIL: "<<e.what()<<std::endl;return 1;}}
