Lemma impor (P Q R : Prop): ((P->Q)\/(P->R))<->(P->(Q\/R)).
Prove both directions of ((P   ->   Q)   \/   (P   ->   R)) iff ((P   ->   Q   \/   R)).
Assume ((P   ->   Q)   \/   (P   ->   R)) then prove (P   ->   Q   \/   R ).
Assume P then prove (Q   \/   R).
Consider cases based on disjunction in hypothesis Hyp.
Obtain Q applying Hyp1 to Hyp0.
Prove Q in the disjunction.
This follows from assumptions.
Prove R in the disjunction.
Obtain R applying Hyp2 to Hyp0.
This follows from assumptions.
Assume (P   ->   Q   \/   R) then prove ((P   ->   Q)   \/   (P   ->   R)).
Prove by contradiction.
Claim ((not(P   ->   Q))  /\  (not(P   ->   R))).
Prove the conjunction in the goal by first proving (not  (P   ->   Q)) then (not  (P   ->   R) ).
Rewrite goal using the definition of not.
Assume (P   ->   Q) then prove False.
Claim ((P   ->   Q)   \/   (P   ->   R)).
Prove (P   ->   Q) in the disjunction.
This follows from assumptions.
Obtain False applying H to H0.
This follows from assumptions.
Rewrite goal using the definition of not.
Assume (P   ->   R) then prove False.
Claim ((P   ->   Q)   \/   (P   ->   R)).
Prove (P   ->   R) in the disjunction.
This follows from assumptions.
Obtain False applying H to H0.
This follows from assumptions.
Eliminate the conjuction in hypothesis H0.
Claim P.
Prove by contradiction.
Claim (P -> Q).
Assume P then prove Q.
Rewrite hypothesis H0 using the definition of not.
Obtain False applying H0 to Hyp2.
Prove by contradiction.
This follows from assumptions.
Rewrite hypothesis Hyp0 using the definition of not.
Obtain False applying Hyp0 to H1.
This follows from assumptions.
Obtain (Q \/ R) applying Hyp to H0.
Consider cases based on disjunction in hypothesis H1.
Claim (P->Q).
Assume P then prove Q.
This follows from assumptions.
Rewrite hypothesis Hyp0 using the definition of not.
Obtain False applying Hyp0 to H1.
This follows from assumptions.
Claim (P -> R).
Assume P then prove R.
This follows from assumptions.
Rewrite hypothesis Hyp1 using the definition of not.
Obtain False applying Hyp1 to H1.
This follows from assumptions.
Lemma andimp (P Q R : Prop): (P->(Q->R))<->((P/\Q)->R).
Prove both directions of (P   ->   Q   ->   R) iff (P  /\   Q   ->   R) .
Assume (P   ->   Q   ->   R)  then prove ( P  /\   Q   ->   R).
Assume (P  /\   Q) then prove R.
Eliminate the conjuction in hypothesis Hyp0.
Obtain (Q->R) applying Hyp to Hyp1.
Obtain R applying H to Hyp2.
This follows from assumptions.
Assume (P  /\   Q   ->   R) then prove (P   ->   Q   ->   R ).
Assume P then prove (Q->R).
Assume Q then prove R.
Claim (P/\Q).
Prove the conjunction in the goal by first proving P then Q.
This follows from assumptions.
This follows from assumptions.
Obtain R applying Hyp to H.
This follows from assumptions.
Lemma andorimp (P Q R : Prop): ((P->R)/\(Q->R))<->((P\/Q)->R).
Prove both directions of ((P   ->   R)  /\   (Q   ->   R)) iff ((P   \/   Q   ->   R)).
Assume ((P   ->   R)  /\   (Q   ->   R)) then prove (P   \/   Q   ->   R ).
Assume (P   \/   Q) then prove R.
Eliminate the conjuction in hypothesis Hyp.
Consider cases based on disjunction in hypothesis Hyp0.
Obtain R applying Hyp1 to Hyp.
This follows from assumptions.
Obtain R applying Hyp2 to Hyp3.
This follows from assumptions.
Assume (P   \/   Q   ->   R) then prove ((P   ->   R)  /\   (Q   ->   R)).
Prove the conjunction in the goal by first proving (P   ->   R) then (Q   ->   R).
Assume P then prove R.
Claim (P\/Q).
Prove P in the disjunction.
This follows from assumptions.
Obtain R applying Hyp to H.
This follows from assumptions.
Assume Q then prove R.
Claim (P\/Q).
Prove Q in the disjunction.
This follows from assumptions.
Obtain R applying Hyp to H.
This follows from assumptions.
Qed.

