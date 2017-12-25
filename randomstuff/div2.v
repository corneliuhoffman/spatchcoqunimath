Definition div a b := (exists n, b = a*n).
Notation "a | b" := (div a b) (at level 10).
Lemma a( a b c :nat): (a | b) /\ (a |c) -> (a | (b+c)).
Assume ((a | b) ∧ (a | c)) then prove (a | (b + c)).
Eliminate the conjuction in hypothesis Hyp .
