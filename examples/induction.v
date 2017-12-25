Fixpoint sum n:= match n with 0=>0 | S n => S n + (sum n) end.
Lemma a(n:nat): 2*(sum n)= n*(n+1).
Apply induction on n.
This is trivial.
Claim (sum (S n) = S n + sum n).
This is trivial.
Rewrite the goal using H.
Claim (2 * (S n + (sum n)) = 2*(S n) + 2*(sum n)).
True by arithmetic properties.
Rewrite the goal using H0 .
Rewrite the goal using IHn .
True by arithmetic properties.
