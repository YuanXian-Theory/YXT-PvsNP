# YXT-PvsNP

**Topological Decision of P vs NP**  
via YuanXian Theory (YD-T64 Framework + TCSC Axiom System)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20108438.svg)](https://doi.org/10.5281/zenodo.20108438)

### Core Contribution

This work reinterprets the P vs NP problem from a topological perspective. By mapping computational tasks onto the 64-dimensional torus $T^{64}$ and utilizing the TCSC involution, we prove that **verification (NP)** and **construction (P)** are topologically inequivalent operations, establishing **P ≠ NP** as a consequence of the geometry of spacetime.

### Main Results

- Computational problems are reformulated as path-finding on $T^{64}$
- Non-trivial fundamental group $\pi_1(T^{64}) \cong \mathbb{Z}^{64}$ separates verification from construction
- TCSC involution imposes parity constraints making polynomial reduction impossible
- Numerical simulations and Lean 4 formalization support the topological separation

### Repository Contents

YXT-PvsNP/ ├── main.tex                    # Full paper (LaTeX) ├── sage/ │   ├── sat_encoder.py          # SAT to topological encoding │   └── complexity_scan.py      # Complexity separation simulation ├── lean/ │   ├── Topology.lean           # T^64 topology foundations │   └── PvsNPProof.lean         # Core P ≠ NP topological proof ├── scripts/ │   └── verify.sh               # One-click verification ├── figures/                    # Generated plots └── README.md

### Quick Start

```bash
# Clone the repository
git clone https://github.com/yuanxian-theory/YXT-PvsNP.git
cd YXT-PvsNP

# Run numerical simulation
sage -python sage/complexity_scan.py

# Build Lean 4 formalization
cd lean && lake build
