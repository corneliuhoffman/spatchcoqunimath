Variable Beings:Set.
Variables Babies Illogical ManageCroc Despised: Beings->Prop.
Axiom LCa: forall x, Babies x -> Illogical x.
Axiom LCb : forall x, ManageCroc x -> not (Despised x).
Axiom LCc: forall x, Illogical x ->Despised x.
Lemma LcBabies: forall x, Babies x -> not (ManageCroc x).
Fix an arbitrary element x.
Assume (Babies x) then prove (not (ManageCroc x)).
Rewrite goal using the definition of not.
Assume (ManageCroc x) then prove False.
Apply result (LCb x).
This follows from assumptions.
Apply result LCc.
Apply result LCa.
This follows from assumptions.
