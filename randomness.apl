#!/usr/local/bin/apl --script

 ⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝
⍝
⍝ acicpas/randomness 2016-03-13 21:53:56 (GMT+8)
⍝
 ⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝

∇r ← p Nv x ;m;v;a;b
 m ← ↑p
 v ← ↑1↓p
 a ← (v - 1) ÷ m
 b ← v ÷ m
 r ← +/ (a < x) ∧ (x < b)
∇

∇y ← a addfac x
 y ← fact a + x
∇

∇R ← avg x
 R ← (+/ x) ÷ ⍴ x
∇

∇a ← double x
 a ← x × 2
∇

∇y ← doublefac x
 y ← 2 multifac x
∇

∇r ← ev x ;var;sum
 var ← (x - avg x) * 2
 sum ← +/ var
 r ← sum ÷ ⍴ x
∇

∇n ← fact x
 ⍝ the factorial part of x
 n ← x - ⌊x
∇

∇v ← n firstseries x ; i
 i ← 1
 v ← ,x
 h: → (i = n) / 0
 i ← i + 1
 x ← 0.5 + 4 × (x - 0.5) * 3
 v ← v,x
 → h
∇

∇y ← m multifac x
 y ← fact m × x
∇

∇λ←⍺ myfact ⍵
 λ←fact (⍺ + ⍵)
∇

∇v ← n randomseries a ; x1 ; i
 x1 ← 0
 i ← 0
 v ← ⍳0
 h: → (i = n) / 0
 i ← i + 1
 x1 ← fact x1 + a
 v ← v,x1
 → h
∇

∇v ← a (op seriesgen n) x1 ; i
 ⍝ (doublefac seriesgen 100) 0.02675
 i ← 0
 v ← ⍳0
 h: → (i = n) / 0
 i ← i + 1
 → (0 = ⎕NC 'a') / p
 x1 ← a op x1
 → q
 p: x1 ← op x1
 q: v ← v,x1
 → h
∇


