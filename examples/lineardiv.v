Variable U : Type.
Definition div a b := (exists n, b = a*n).
Notation "a | b" := (div a b) (at level 10).
Lemma a( a b c :nat): (a | b) /\ (a |c) -> (a | (b+c)).
Rewrite goal using the definition of div.
Assume ((∃ n : nat, b = a * n) ∧ (∃ n : nat, c = a * n)) then prove (∃ n : nat, b + c = a * n).
Eliminate the conjuction in hypothesis Hyp .
Fix x the existentially quantified variable in Hyp0 .
Fix y the existentially quantified variable in Hyp1 .
Rewrite the goal using Hyp0.
Rewrite the goal using Hyp1.
Prove the existential claim is true for (x+y).
True by arithmetic properties.
Qed.
