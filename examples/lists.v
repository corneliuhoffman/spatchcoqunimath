Require Import unimath.
Open Scope list_scope.
Variable A:Type.
Theorem my_app_assoc ( l m n:list A): l ++ m ++ n = (l ++ m) ++ n.
Apply induction on l.
Rewrite goal using the definition of app.
This follows from reflexivity.
Rewrite goal using the definition of app.
Rewrite the goal using IHl.
This follows from reflexivity.
Qed.
