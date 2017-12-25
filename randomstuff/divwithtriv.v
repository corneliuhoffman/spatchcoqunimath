Definition div a b := (exists n, b = a*n).
Notation "a | b" := (div a b) (at level 10).
Lemma a (n: nat): 2 | (3^n - 1).
Apply induction on n.
Rewrite goal using the definition of div.
Prove the existential claim is true for 0.
This is trivial.
Rewrite hypothesis IHn using the definition of div.
Fix  x the existentially quantified variable in IHn.
Rewrite goal using the definition of div.
SearchPattern (_^ S _=_).
Rewrite the goal using Nat.pow_succ_r'.
Claim (3^n = 2*x +1).
Rewrite the goal using IHn.
SearchPattern (_ - _ +_ =_).
Rewrite the goal using Nat.sub_add.
This follows from reflexivity.
SearchPattern (_<=_).
Claim (3^0 <= 3^n).
SearchPattern (_<=_^_).
Rewrite the goal using (Nat.pow_le_mono_r 3 0 n).
This follows from reflexivity.
This is trivial.
This is trivial.
Apply result Nat.le_0_l.
SearchPattern (_^0=_).
Rewrite the goal using (Nat.pow_0_r 3).
This follows from assumptions.
Rewrite the goal using H.
Claim (3  *  (2  *  x  +  1) = 2*3*x+3).
True by arithmetic properties.
Rewrite the goal using H0.
SearchPattern (_-_=_).
Claim  (2  *  3  *  x  +  3  -  1= 2  *  3  *  x  +  2).
SearchPattern (_-_=_).
Rewrite the goal using Nat.sub_1_r.
SearchAbout Nat.pred.
Rewrite the goal using Nat.add_pred_r.
This follows from reflexivity.
This is trivial.
Rewrite the goal using H1.
Prove the existential claim is true for (3*x+1).
True by arithmetic properties.

