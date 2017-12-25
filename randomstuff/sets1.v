Variable U:Set.Definition Ens:=U -> Prop.Definition bel (x:U) (A:Ens):= A x.

Notation "x ∈ A":= (bel x A) (at level 10).Definition subs A B := forall x:U, x ∈ A  -> x ∈ B.

Notation "A ⊆ B":= (subs A B)(at level 10).Definition inters (A: Ens) (B:Ens) (x:U)  :=  (A x) /\ (B x).Definition empty (x:U) := False.

Notation "A ∩ B" := (inters A B) (at level 10).Definition union (A:Ens) (B:Ens) (x:U):= A x \/  B x.Definition compl (A:Ens) x := not (A x).

Notation "A ∪ B":= (union A B)(at level 8).

Notation "∁ A":= (compl A)(at level 7).
Lemma a ( A B:Ens): A∩B = empty -> A ⊆ ∁B.
Assume (A ∩ B = empty) then prove (A ⊆ (∁ B)).
Rewrite goal using the definition of subs.
Fix an arbitrary element x.
Assume (x ∈ A) then prove (x ∈ (∁ B)).

Rewrite goal using the definition of bel.
Rewrite goal using the definition of compl.
Rewrite goal using the definition of not.
Assume (B x) then prove False.
Claim (x ∈ (A ∩ B)).
Rewrite goal using the definition of bel.
Rewrite goal using the definition of inters.
Prove the conjunction in the goal by first proving (A x) then (B x).
This follows from assumptions.
This follows from assumptions.
Claim (x∈ empty) by rewriting H using Hyp.
Rewrite hypothesis H0  using the definition of bel.
Rewrite hypothesis H0  using the definition of empty.
This follows from assumptions.
