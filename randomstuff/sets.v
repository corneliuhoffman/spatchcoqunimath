Variable U : Type.
Definition Ensemble := U→Prop.

Definition In (A:Ensemble) (x:U) : Prop := A x.

Definition Included (B C:Ensemble) : Prop := ∀x:U, In B x→In C x.

Definition Empty_set : Ensemble := fun x:U => False.

Definition Full_set : Ensemble := fun x:U => True.

Definition Union (B C:Ensemble) : Ensemble := fun x:U => (In B x) ∧(In C x).

Definition Singleton (x:U) : Ensemble := fun y:U => x = y.

Definition Add (B:Ensemble) (x:U) : Ensemble := Union B (Singleton x).

Definition Intersection (B C:Ensemble) : Ensemble :=fun x:U => (In B x) /\ (In C x).

Definition Complement (A:Ensemble) : Ensemble := fun x:U => ~ In A x.

Definition Setminus (B C:Ensemble) : Ensemble :=fun x:U => In B x /\ ~ In C x.

Definition Same_set (B C:Ensemble) : Prop := Included B C /\ Included C B.

Axiom Extensionality_Ensembles : ∀A B:Ensemble, Same_set A B→A = B.

Notation "x ∈ A":= (In  A x) (at level 10).
Notation "A ⊆ B":= (Included  A B)(at level 10).
Notation "A ∩ B" := (Intersection  A B) (at level 10).
Notation "A ∪ B":= (Union  A B)(at level 8).
Notation "∁ A":= (Complement A)(at level 7).
Notation " ∅ ":= (Empty_set ).
Lemma a (P Q:Ensemble): P ∩ (∁ P) = ∅.
Apply result Extensionality_Ensembles.
Rewrite goal using the definition of Same_set.
Prove the conjunction in the goal by first proving ((P ∩ (∁ P)) ⊆ ( ∅ )) then (( ∅ ) ⊆ (P ∩ (∁ P))).
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ (P ∩ (∁ P))) then prove (x ∈ ( ∅ )).
Rewrite goal using the definition of Empty_set.
Rewrite goal using the definition of In.
Rewrite hypothesis Hyp  using the definition of In.
Rewrite hypothesis Hyp  using the definition of Intersection.
Eliminate the conjuction in hypothesis Hyp .
Rewrite hypothesis Hyp0  using the definition of In.
Rewrite hypothesis Hyp1  using the definition of In.
Rewrite hypothesis Hyp1  using the definition of Complement.
Rewrite hypothesis Hyp1  using the definition of In.
obtain False applying Hyp1 to Hyp0.
This follows from assumptions.
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ ( ∅ )) then prove (x ∈ (P ∩ (∁ P))).
Rewrite hypothesis Hyp  using the definition of In.
Rewrite hypothesis Hyp  using the definition of Empty_set.
Prove by contradiction.
This follows from assumptions.
Lemma oneone (A : Ensemble)(x : U) : (x ∈ A → ¬ (x ∈ ∁ A)).
Assume (x ∈ A) then prove (not (x ∈ (∁ A))).
Rewrite goal using the definition of not.
Assume (x ∈ (∁ A)) then prove False.
Rewrite hypothesis Hyp0  using the definition of Complement.
Rewrite hypothesis Hyp0  using the definition of In.
Rewrite hypothesis Hyp  using the definition of In.
obtain False applying Hyp0 to Hyp.
This follows from assumptions.
Lemma onetwo (A B C : Ensemble): A ⊆ B ∧ B ⊆ C → A ⊆ C.
Assume ((A ⊆ B) ∧ (B ⊆ C)) then prove (A ⊆ C).
Eliminate the conjuction in hypothesis Hyp .
Rewrite hypothesis Hyp0  using the definition of Included.
Rewrite hypothesis Hyp1  using the definition of Included.
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ A) then prove (x ∈ C).
Obtain ((x∈A) -> (x∈B)) using variable x in the universally quantified hypothesis Hyp0 .
Obtain ((x∈B) -> (x∈C)) using variable x in the universally quantified hypothesis Hyp1 .
obtain (x ∈ B) applying Hyp2 to Hyp.
obtain (x ∈ C) applying Hyp3 to H.
This follows from assumptions.
Lemma onethree (A : Ensemble): ∁(∁A)=A.
Apply result Extensionality_Ensembles.
Rewrite goal using the definition of Same_set.
Prove the conjunction in the goal by first proving ((∁ (∁ A)) ⊆ A) then (A ⊆ (∁ (∁ A))).
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ (∁ (∁ A))) then prove (x ∈ A).
Rewrite hypothesis Hyp  using the definition of Complement.
Rewrite hypothesis Hyp  using the definition of In.
Prove by contradiction.
obtain False applying Hyp to H.
This follows from assumptions.
Rewrite goal using the definition of In.
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ A) then prove (x ∈ (∁ (∁ A))).
Rewrite goal using the definition of Complement.
Rewrite goal using the definition of In.
Rewrite goal using the definition of not.
Assume (A x → False) then prove False.
obtain False applying Hyp0 to Hyp.
This follows from assumptions.
Lemma onefour (A B C : Ensemble): (((A⊆B)∧(A⊆C))->(A⊆(B∩C))).
Assume ((A ⊆ B) ∧ (A ⊆ C)) then prove (A ⊆ (B ∩ C)).
Eliminate the conjuction in hypothesis Hyp .
Rewrite goal using the definition of Intersection.
Rewrite goal using the definition of Included.
Rewrite goal using the definition of In.
Fix an arbitrary element x.
Assume (A x) then prove (B x /\ (C x)).
Prove the conjunction in the goal by first proving (B x) then (C x).
Rewrite hypothesis Hyp0  using the definition of Included.
Obtain ((x∈A)->(x∈B)) using variable x in the universally quantified hypothesis Hyp0.
obtain (B x) applying Hyp2 to Hyp.
This follows from assumptions.
Rewrite hypothesis Hyp1  using the definition of Included.
Obtain ((x∈A)->(x∈C)) using variable x in the universally quantified hypothesis Hyp1 .
obtain (C x) applying Hyp2 to Hyp.
This follows from assumptions.
Lemma onefive (A B C : Ensemble): ((A ⊆ (B ∩ C)) -> ((A⊆ B) ∧(A ⊆C))) .
Assume (A ⊆ (B ∩ C)) then prove ((A ⊆ B) ∧ (A ⊆ C)).
Prove the conjunction in the goal by first proving (A ⊆ B) then (A ⊆ C).
Rewrite hypothesis Hyp  using the definition of Intersection.
Rewrite hypothesis Hyp  using the definition of Included.
Rewrite goal using the definition of Included.
Rewrite hypothesis Hyp  using the definition of In.
Fix an arbitrary element x.
Assume (x ∈ A) then prove (x ∈ B).
Obtain ((A x)->(B x /\ (C x))) using variable x in the universally quantified hypothesis Hyp .
obtain (B x /\ (C x)) applying Hyp1 to Hyp0.
Eliminate the conjuction in hypothesis H.
This follows from assumptions.
Rewrite hypothesis Hyp  using the definition of Intersection.
Rewrite hypothesis Hyp  using the definition of Included.
Rewrite goal using the definition of Included.
Rewrite hypothesis Hyp  using the definition of In.
Fix an arbitrary element x.
Assume (x ∈ A) then prove (x ∈ C).
Obtain ((A x)->(B x /\ (C x))) using variable x in the universally quantified hypothesis Hyp .
obtain (B x /\ (C x)) applying Hyp1 to Hyp0.
Eliminate the conjuction in hypothesis H.
This follows from assumptions.
Lemma onesix (A B : Ensemble) : (A⊆B)->A∩(∁B).
Lemma onesix (A B : Ensemble) : ((A⊆B)->(A∩(∁B))) .
Lemma onesix (A B : Ensemble): ((A⊆B)→(A∩(∁B))) .
Lemma onesix (A B : Ensemble): ((A ⊆ B) -> (A ∩ (∁ B))).
