Definition div a b:= exists c, b = a* c.
Notation "a | b" := (div a b)(at level 0).
Lemma a (n:nat): 2  | (n*n+n).
Rewrite goal using the definition of div.
Apply induction on n.
Prove the existential claim is true for 0.
This follows from reflexivity.
Claim ( S  n  *  S  n  +  S  n = n*n + n + 2 *n +2).
True by arithmetic properties.
Rewrite the goal using H.
Fix c the existentially quantified variable in IHn.
Rewrite the goal using IHn.
Prove the existential claim is true for (c+n +1).
True by arithmetic properties.
Qed.
Definition odd n := exists x, n= 2*x+1.
Lemma b(n:nat): odd n -> not ( 2 | n).
Assume (odd n) then prove  (not ( 2 | n)).
Rewrite goal using the definition of not.
Assume (2 | n) then prove False.
Rewrite hypothesis Hyp using the definition of odd.
Rewrite hypothesis Hyp0 using the definition of div.
Fix x the existentially quantified variable in Hyp0.

