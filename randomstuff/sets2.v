Variable U : Type.
  Definition Ensemble := U -> Prop.
  Definition In (A:Ensemble) (x:U) : Prop := A x.
  Definition Included (B C:Ensemble) : Prop := forall x:U, In B x -> In C x.
  Inductive Empty_set : Ensemble :=.
  Inductive Full_set : Ensemble := Full_intro : forall x:U, In Full_set x.

  Inductive Union (B C:Ensemble) : Ensemble :=| Union_introl : forall x:U, In B x -> In (Union B C) x | Union_intror : forall x:U, In C x -> In (Union B C) x.
Inductive Singleton (x:U) : Ensemble :=In_singleton : In (Singleton x) x.

  Definition Add (B:Ensemble) (x:U) : Ensemble := Union B (Singleton x).

  Inductive Intersection (B C:Ensemble) : Ensemble :=Intersection_intro :forall x:U, In B x -> In C x -> In (Intersection B C) x.

  
  Definition Complement (A:Ensemble) : Ensemble := fun x:U => ~ In A x.  
  Definition Setminus (B C:Ensemble) : Ensemble :=fun x:U => In B x /\ ~ In C x.  Definition Subtract (B:Ensemble) (x:U) : Ensemble := Setminus B (Singleton x). Inductive Disjoint (B C:Ensemble) : Prop := Disjoint_intro : (forall x:U, ~ In (Intersection B C) x) -> Disjoint B C.
  Inductive Inhabited (B:Ensemble) : Prop :=Inhabited_intro : forall x:U, In B x -> Inhabited B.
  Definition Strict_Included (B C:Ensemble) : Prop := Included B C /\ B <> C.
  Definition Same_set (B C:Ensemble) : Prop := Included B C /\ Included C B. 
Axiom Extensionality_Ensembles : forall A B:Ensemble, Same_set A B -> A = B.

Notation "x ∈ A":= (In A x) (at level 10).

Notation "A ⊆ B":= (Included A B)(at level 10).
Notation "A ∩ B" := (Intersection A B) (at level 10).


Notation "A ∪ B":= (Union A B)(at level 8).

Notation "∁ A":= (Complement A)(at level 7).
Lemma a (A B:Ensemble): A⊆ B -> ∁B ⊆ ∁A.
Assume (A ⊆ B) then prove ((∁ B) ⊆ (∁ A)).
Rewrite hypothesis Hyp  using the definition of Included.
Rewrite goal using the definition of Included.
Fix an arbitrary element x.
Assume (x ∈ (∁ B)) then prove (x ∈ (∁ A)).
Obtain ((x ∈ A)  ->  (x ∈ B)) using variable x in the universally quantified hypothesis Hyp .
Rewrite goal using the definition of In.
Rewrite goal using the definition of Complement.
Rewrite goal using the definition of not.
Assume (x ∈ A) then prove False.
Rewrite hypothesis Hyp0 using the definition of In.
Rewrite hypothesis Hyp0 using the definition of Complement.
Rewrite hypothesis Hyp0  using the definition of not.
Apply result Hyp0 .
Apply result Hyp1 .
This follows from assumptions.
