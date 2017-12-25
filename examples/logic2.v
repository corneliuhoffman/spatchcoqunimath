Lemma a (P Q R:Prop): (P->Q/\R)<->(P->Q)/\(P->R).
Prove both directions of (P → (Q /\ R)) iff ((P → Q) ∧ (P → R)).
Assume (P → (Q /\ R)) then prove ((P → Q) ∧ (P → R)).
Prove the conjunction in the goal by first proving (P → Q) then (P → R).
Assume P then prove Q.
Obtain (Q ∧ R) applying Hyp to Hyp0.
Eliminate the conjuction in hypothesis H .
This follows from assumptions.
Assume P then prove R.
Obtain (Q ∧ R) applying Hyp to Hyp0.
Eliminate the conjuction in hypothesis H .
This follows from assumptions.
Assume ((P → Q) ∧ (P → R)) then prove (P → (Q ∧ R)).
Eliminate the conjuction in hypothesis Hyp .
Assume P then prove (Q ∧ R).
Prove the conjunction in the goal by first proving Q then R.
Apply result Hyp0 .
This follows from assumptions.
Apply result Hyp1 .
This follows from assumptions.
