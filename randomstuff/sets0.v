Require Import Ensembles.
Variable U:Type.
Notation "x ∈ A":= (In U A x) (at level 10).
Notation "A ⊆ B":= (Included U A B)(at level 10).
Notation "A ∩ B" := (Intersection U A B) (at level 10).
Notation "A ∪ B":= (Union U A B)(at level 8).
Notation "∁ A":= (Complement  U A)(at level 7).
Notation " ∅ ":= (Empty_set U).
Lemma a (P Q:Ensemble U): P ∩ (∁ P) = ∅.
