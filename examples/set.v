Variable U : Type.
Definition Ensemble := U -> Prop.
Definition In (A:Ensemble) (x:U):= A x.
Notation "x ∈ A":= (In A x) (at level 10).
Definition Included (B C:Ensemble) : Prop := forall x:U, x∈B -> x ∈ C.
Notation "A ⊆ B":= (Included  A B)(at level 10).
Definition Union (B C:Ensemble) : Ensemble := fun x:U => (x∈B) \/ (x∈C).
Notation "A ∪ B":= (Union  A B)(at level 8).
Definition Intersection (B C:Ensemble) : Ensemble :=fun x:U => (x∈B) /\ (x∈C).
Notation "A ∩ B" := (Intersection  A B) (at level 10).
Lemma a (A B C:Ensemble):((A∩(B∪C)) ⊆ ((A∩B)∪(A∩C))).
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ (A ∩ (B ∪ C))) then prove (x ∈ ((A ∩ B) ∪ (A ∩ C))).
Rewrite goal using the definition of (In, Union).
Rewrite hypothesis Hyp  using the definition of (In, (Intersection)).
Eliminate the conjuction in hypothesis Hyp .
Rewrite hypothesis Hyp1  using the definition of (In,Union).
Consider cases based on disjunction in hypothesis Hyp1 .
Prove left hand side.
Rewrite goal using the definition of (In, Intersection).
Prove the conjunction in the goal by first proving (x ∈ A) then (x ∈ B).
This follows from assumptions.
This follows from assumptions.
Prove right hand side.
Rewrite goal using the definition of (In, Intersection).
Prove the conjunction in the goal by first proving (x ∈ A) then (x ∈ C).
This follows from assumptions.
This follows from assumptions.
