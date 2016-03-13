#!/usr/local/bin/apl --script

 ⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝⍝
⍝
⍝ acicpas/randomness 2016-03-14 00:32:26 (GMT+8)
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

∇y ←  chaotic x
 → ((x ≥ 0) ∧ (x ≤ 1 ÷ 3)) / p
 → ((x ≥ 1 ÷ 3) ∧ (x ≤ 2 ÷ 3)) / q
 → ((x ≥ 2 ÷ 3) ∧ ( x ≤ 1)) / r
 →  ((x > 1) ∨ (x < 0)) / 0
 r: y ← (3 × x) - 2
 → 0
 q: y ← 2 - 3 × x
 → 0
 p: y ← 2 × x
∇

∇y ← doublefac x
 y ← 2 multifac x
∇

∇v ← a equidistr n
 ⍝ 3.1415926 equidistr 1000
 v ← fact ¨ (a × ⍳n)
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
 ⍝ 3 (multifac seriesgen 100) 0.09876
 ⍝ 5.634 (addfac seriesgen 100) 0.0283472
 ⍝ (chaotic seriesgen 100) 0.098765
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

⎕CT←1E¯13

⎕FC←6⍴(,⎕UCS 46 44 8902 48 95 175)

⎕IO←1

⎕L←0

⎕LX←' '
  ⎕LX←0⍴⎕LX

⎕PP←10

⎕PR←' '

⎕PS←0

⎕PW←80

⎕R←0

⎕RL←16807

⎕TZ←8

⎕X←0

