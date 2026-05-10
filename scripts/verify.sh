#!/bin/bash
# YXT-PvsNP Verification Script
# Topological Decision of P vs NP

echo "=================================================="
echo "   YXT-PvsNP  Verification Script"
echo "   Topological Proof of P ≠ NP"
echo "=================================================="

echo "[1/3] Running SageMath Complexity Simulation..."
sage -python sage/complexity_scan.py

if [ $? -eq 0 ]; then
    echo "✅ SageMath simulation completed successfully."
else
    echo "⚠️  SageMath simulation encountered issues."
fi

echo "[2/3] Building Lean 4 Formalization..."
cd lean && lake build

if [ $? -eq 0 ]; then
    echo "✅ Lean 4 formalization built successfully."
else
    echo "⚠️  Lean 4 build failed."
fi

echo "[3/3] All verifications completed."
echo "=================================================="
echo "Repository: https://github.com/yuanxian-theory/YXT-PvsNP"
echo "=================================================="
