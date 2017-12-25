Variables P Q:Prop.
Definition D1:= P /\ not Q.
Definition  D2:= ( not P /\ Q)\/(P/\ not Q).
Definition onlyone:= (D1 /\ not D2)\/ (not D1 /\ D2).
Lemma a: onlyone  -> Q.
Assume onlyone then prove Q.
Rewrite hypothesis Hyp  using the definition of onlyone.
Consider cases based on disjunction in hypothesis Hyp .
Eliminate the conjuction in hypothesis Hyp0 .
Rewrite hypothesis Hyp1  using the definition of D2.
Rewrite hypothesis Hyp  using the definition of D1.
Prove by contradiction.
Apply result Hyp1.
Prove right hand side.
This follows from assumptions.
Eliminate the conjuction in hypothesis Hyp1.
Rewrite hypothesis Hyp  using the definition of D1.
Rewrite hypothesis Hyp0  using the definition of D2.
Consider cases based on disjunction in hypothesis Hyp0 .
Eliminate the conjuction in hypothesis Hyp1 .
This follows from assumptions.
Prove by contradiction.
Apply result (Hyp Hyp2).
Qed.
