# YXT-PvsNP

**Topological Decision of P vs NP**  
via YuanXian Theory (YD-T64 + TCSC Framework)

### Core Idea
This work reinterprets computational complexity as topological path-finding problems on the 64-torus $T^{64}$. Using the non-trivial fundamental group and TCSC involution, we prove that verification (NP) and construction (P) are topologically distinct, establishing **P ≠ NP**.

### Quick Start
```bash
git clone https://github.com/yuanxian-theory/YXT-P-vs-NP.git
cd YXT-P-vs-NP

sage -python sage/p_vs_np_sim.py
cd lean && lake build
