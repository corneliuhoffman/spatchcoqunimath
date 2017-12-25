Variable U : Type.
Definition Ensemble := U -> Prop.
Definition In (A:Ensemble) (x:U) : Prop := A x.
Definition Included (B C:Ensemble) : Prop := forall x:U, In B x -> In C x.
Definition Empty_set : Ensemble := fun x:U => False.
Definition Full_set : Ensemble := fun x:U => True.
Definition Union (B C:Ensemble) : Ensemble := fun x:U => (In B x) \/ (In C x).
Definition Singleton (x:U) : Ensemble := fun y:U => x = y.
Definition Add (B:Ensemble) (x:U) : Ensemble := Union B (Singleton x).
Definition Intersection (B C:Ensemble) : Ensemble :=fun x:U => (In B x) /\ (In C x).
Definition Complement (A:Ensemble) : Ensemble := fun x:U => ~ In A x.
Definition Setminus (B C:Ensemble) : Ensemble :=fun x:U => In B x /\ ~ In C x.
Definition Same_set (B C:Ensemble) : Prop := Included B C /\ Included C B.
Axiom Extensionality_Ensembles : forall A B:Ensemble, Same_set A B -> A = B.
Notation "x ∈ A":= (In  A x) (at level 10).
Notation "A ⊆ B":= (Included  A B)(at level 10).
Notation "A ∩ B" := (Intersection  A B) (at level 10).
Notation "A ∪ B":= (Union  A B)(at level 8).
Notation "∁ A":= (Complement A)(at level 7).
Notation " ∅ ":= (Empty_set ).
Lemma a (P Q:Ensemble): P ∩ (∁ P) = ∅.
Rewrite the goal using Extensionality_Ensembles.
Rewrite goal using the definition of Same_set.
Prove the conjunction in the goal by first proving ((P ∩ (∁ P)) ⊆ ( ∅ )) then (( ∅ ) ⊆ (P ∩ (∁ P))).
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ (P ∩ (∁ P))) then prove (x ∈ ( ∅ )).
Rewrite goal using the definition of  Empty_set.
Rewrite goal using the definition of In.
Rewrite hypothesis Hyp  using the definition of In.
Rewrite hypothesis Hyp  using the definition of Intersection.
Rewrite hypothesis Hyp  using the definition of In.
Rewrite hypothesis Hyp  using the definition of Complement.
Rewrite hypothesis Hyp using the definition of In.
Eliminate the conjuction in hypothesis Hyp.
Apply result (Hyp1 Hyp0).
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ ( ∅ )) then prove (x ∈ (P ∩ (∁ P))).
Rewrite hypothesis Hyp using the definition of In.
Rewrite hypothesis Hyp using the definition of Empty_set.
Prove by contradiction.
This follows from assumptions.
Qed.
