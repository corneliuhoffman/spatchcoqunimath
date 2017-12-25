---
author:
- Author
bibliography:
- 'mybibliography.bib'
title: Sample Book
---

installation
============

### Mac OSX

1.  Download and install the latest version of Coq (it needs to be at
    least 8.6) from :

    <https://coq.inria.fr/download>

    Move it to your apps folder.

2.  Download and unpack spatchocq.app from canvas move the spatchcoq.app
    to Applications and start it.

3.  when prompted find the Coq installation you have just move above.
    Navigate to

        /Applications/CoqIDE_8.6.app/Contents/Resources/bin/

    and choose coqtop. See Figure \[fig:macos\]

    You only do this once.

4.  You only have to do this once. You might also need to install gtk,
    the simplest way to do this is via homebrew [brew install gtk+]{}

    \[fig:macos\] ![Choose the Coq app in a Mac
    env[]{data-label="fig:macos"}](Installation/macos.png "fig:")

5.  enjoy

### Windows

1.  get the zipfile spatchcoq.zip, unzip it in a folder on a usb stick
    and doubleclick the application file spatchcoq. Note this version
    includes an instalation of Coq (not very extensively tested yet)

2.  enjoy

### Linux

1.  Download and install the latest version of Coq it needs to be at
    least 8.6 so do not use apt-get install coq

2.  go to https://github.com/corneliuhoffman/spatchcoqocaml/tree/master
    to build from scratch.

3.  when prompted go to the Coq folder you just installed with opam and
    find the application called [**coqtop**]{}

4.  enjoy

Introducing the GUI
-------------------

### Main windows

Figure \[first look\] is a view of the GUI. As you can see there are 4
different windows and three buttons.

1.  The Green window : This is the window that keeps the text that has
    already been processed.

2.  The Yellow window ’: This is the only window you can type your
    commands into.

3.  The Gray window : this is the Coq feedback window.

4.  The White window : this is a window for messages.

5.  The run button: this sends the first line from the input window to
    Coq.

6.  The undo button: this undoes the last command.

7.  The draw tree button: this draws the proof trees for all the
    completed theorems,.

![the GUI[]{data-label="first look"}](Installation/main.png)

### The menus

The File menu (Figure \[file\]) is quite standard:

![the File Menu[]{data-label="file"}](Installation/menu1.png)

The Tactics menu (Figure \[tactics\]) allows one to pick one of the
predefined tactics. Note the place keeper VAR These can be modified in
the customisation menu at start. More on these later.

![the Tactics/Environment
Menus[]{data-label="tactics"}](Installation/menu2.png)

### Keyboard shortcuts

Pressing ESC autocompletes the commands and pressing [CTRL-r ]{}circles
around the various possibilities for VAR.

Two simple examples
-------------------

We give two detailed examples that will exemplify the mechanics of the
GUI. For clarity we will use colour boxes that will exemplify the window
that we refer to. So green boxes refer to the processed window, yellow
ones to the input window and gray ones to the feedback window.

### Propositional Calculus

We will prove that if $P$ and $Q$ are propositions then
$$P\lor Q \Rightarrow Q\lor P$$

the way to enter this is:

`Lemma commor(P Q :Prop): P ‘ / Q -> Q ‘ / P .`

Note that the feedback from Coq says

[`Lemma commor(P Q :Prop): P ‘ / Q -> Q ‘ / P .`]{}$
P,  Q : Prop \\
===========\\
P  \lor  Q  \rightarrow  Q \lor  P 
$

This means that the hypotheses are that $P$ and $Q$ are propositions and
the conclusion is $ P \lor Q \rightarrow Q \lor P$. To prove an
implication statement we assume the left hand and try to prove the right
hand. Here is how you do it in Spatchcoq:

Type “Assume” and press ESC to get

`Assume VAR then prove VAR.`

Press [CTRL-r ]{}to select the first VAR.

write $( P \lor Q )$ to replace the first VAR. Repeat [CTRL-r ]{}and and
replace the second VAR by $(Q \lor P)$.

The text in the yellow window should now be

`Assume ( P \lor Q ) then prove ( Q \lor P ).`

Click run.

The response from Coq is

$
 P \ Q: \mbox{Prop}\\
\mbox{Hyp}: P \lor Q\\
===========\\
Q\lor P
$

This reflects the fact that we have a new hypothesis tabled Hyp and a
new conclusion.

Of course since we have a hypothesis with a disjunction we will use an
argument by cases. To do so, type “cases” and press ESC. Choose the
following:

`Consider cases based on disjunction in hypothesis VAR.`

Press [CTRL-r ]{}and replace VAR by Hyp. Click run.

Notice that there are now two goals:

$
 P \ Q: \mbox{Prop}\\
\mbox{Hyp0}: P\\
===========\\
Q\lor P
$

and

$
P \ Q: \mbox{Prop}\\
\mbox{Hyp1}:  Q\\
===========\\
Q\lor P
$

corresponding to the two cases to consider. In first goal we will prove
the right hand side of the disjunction in the conclusion. To do so, type
“right” and press ESC. You get to pick

` Prove right hand side.`

and after clicking run you will get the following feedback (note that
the second goal stays unchanged)

$
P \ Q: \mbox{Prop}\\
\mbox{Hyp0}: P\\
===========\\
 P
$

Finally you can finish this goal by using the hypothesis Hyp0. To do
this you use

`This follows from assumptions.`

Note that you have now finished this goal. Repeat the argument for the
second goal by using:

` Prove left hand side.`

`This follows from assumptions.`

to get

$\texttt{no more goals}$

Now type

`Qed.`

to save the theorem. It now appears among the proved theorems:

and you can see its proof tree by clicking on draw tree:

![the tree
window[]{data-label="treesearch"}](Installation/treecommor.png)

### An elementary number theory example

We shall prove the transitivity of divisibility. That is we will prove
that
$$\forall a,b, c \in \mathbb{N},  a |b \land b | c \Rightarrow a | c$$IN
the process we will introduce definitions and notations.

To start we note that we will be talking about objects of type `nat`. We
weill introduce the following definition

`Definition divides a b := exists x:nat, b = a*x.`

We hope that the format is quite clear, it resembles the one we used
before but uses a few new notions, the operator `:=` which the dines the
function `divides` and the quantifier `exists`. Note that we have not
explicitly stated that a and b should be natural numbers, Coq will
deduce that from the context. We could have been very precise as
follows:

` Definition divides (a b:nat) := exists x:nat, b = a*x.`

Note that the definition will not get any feedback from Coq. If we want
to check that we have correctly defined our notion we can use

`Check divides.`

to get

Query commands should not be inserted in scripts\
divides\
`: nat -> nat -> Prop`

or

`Print divides.`

to get a more detailed

Query commands should not be inserted in scripts\
divides = $\lambda a b : nat, \exists x : nat, b = a * x$\
` : nat -> nat -> Prop`\
Argument scopes are \[nat\_scope nat\_scope\]

We will nod describe all this output here but we note the change from
`exists` to $\exists$ and the occurrence of $\lambda$, a notation for
functions.

Next we define a notation for divides

`Notation  a | b  := (divides a b) (at level 10).`

Again no feedback from Coq. The definition should be self-evident except
for the “(at level 10)” part. We will discuss this elsewhere.

We are now ready to state out theorem

We can state the theorem as (see the corresponding feedback)

[`Theorem refldiv (a b c:nat): (a | b) \land (b | c) -> (a |c).`]{}$a,  b,  c : nat \\
===========
a  |  b  \land  b  |  c \rightarrow  a  |  c $

but we prefer the version

`Theorem refldiv: forall a b c, (a | b) \land (b | c) -> (a |c). `

because it is almost identical to the above mathematical statement and
it will allow us to show some more tactics. The corresponding feedback
is

$================\\
\forall  a \  b\   c : nat,  a  |  b \  \land \ b  |  c\  \rightarrow\ a  |  c $

Note that Coq has correctly deduced that $a, b, c$ are natural numbers
and replaced the quantifier `forall` with $\forall$. Note also that in
this form there are no hypotheses.

We fill fix the three variables with the tactics:

`Fix an arbitrary element a. Fix an arbitrary element b. Fix an arbitrary element c.`

to get

$a,  b,  c : nat \\
===========\\
a  |  b  \land  b  |  c \rightarrow  a  |  c $

As before, in order to prove an implication $A\rightarrow B$ we use the
tactic

`Assume A then prove B.`

More precisely, in this case we have

`Assume (a | b \land b | c ) then prove (a | c).`

to get

$a,  b,  c : nat \\
Hyp : a  |  b  \land  b  |  c \\
================ \\
a  |  c $

Note that hypothesis Hyp is of type $A \land B$. We will split this in
two hypotheses with:

`Eliminate the conjuction in hypothesis Hyp.`

to get

$a,  b,  c : nat \\
Hyp0 : a  |  b\\
Hyp1 :  b  |  c \\
================ \\
a  |  c $

We seem to have used all the tricks up our selves and so it is time to
“unfold” the definitions:

`Rewrite hypothesis Hyp0 using the definition of divides.`

$a,  b,  c : nat \\
Hyp0 : \exists  x  :  nat,  b  =  a  *  x \\
Hyp1 :  b  |  c \\
================ \\
a  |  c $

then

`Rewrite hypothesis Hyp1 using the definition of divides.`

$a,  b,  c : nat \\
Hyp0 : \exists  x  :  nat,  b  =  a  *  x \\
Hyp1 : \exists  x  :  nat,  c  =  b  *  x \\
================ \\
a  |  c $

and

`Rewrite goal using the definition of divides.`

$a,  b,  c : nat \\
Hyp0 : \exists  x  :  nat,  b  =  a  *  x \\
Hyp1 : \exists  x  :  nat,  c  =  b  *  x \\
================ \\
\exists x : nat,  c  =  a  *  x  $

We now pick x as in the hypothesis Hyp1, that is:

`Fix x the existentially quantified variable in Hyp1.`

to get

$a,  b,  c : nat \\
Hyp0 : \exists  x  :  nat,  b  =  a  *  x \\
x : nat \\
Hyp1 :   c  =  b  *  x \\
================ \\
\exists x0 : nat,  c  =  a  *  x0  $

Note the variable name was changed in the goal but not in Hyp0.

We now use the newly formed Hyp1 as follows:

`Rewrite the goal using Hyp1.`

to get

$a,  b,  c : nat \\
Hyp0 : \exists  x  :  nat,  b  =  a  *  x \\
x : nat \\
Hyp1 :   c  =  b  *  x \\
================ \\
\exists x0 : nat,  b  *  x  =  a  *  x0  $

Similarly we pick y as in Hyp0 and replace it in the goal

` Fix y the existentially quantified variable in Hyp0. Rewrite the goal using Hyp0. `

to get

$a,  b,  c y : nat \\
Hyp0 :   b  =  a  *  y \\
x : nat \\
Hyp1 :   c  =  b  *  x \\
================ \\
\exists x0 : nat,  a  *  y  *  x  =  a  *  x0  $

It is now easy to guess that $x0 = y*x$ so we write

`Prove the existential claim is true for (y*x).`

to obtain

$a,  b,  c y : nat \\
Hyp0 :   b  =  a  *  y \\
x : nat \\
Hyp1 :   c  =  b  *  x \\
================ \\
 a  *  y  *  x  =  a  *  (y*x)  $

which can be proved by

`True by arithmetic properties.`

the total proof is

` Definition divides (a b:nat) := exists x:nat, b = a*x. Notation  a | b  := (divides a b) (at level 10). Theorem refldiv:forall a b c, (a | b) \land (b | c) -> (a |c). Fix an arbitrary element a. Fix an arbitrary element b. Fix an arbitrary element c. Assume (a | b \land b | c ) then prove (a | c). Eliminate the conjuction in hypothesis Hyp. Rewrite hypothesis Hyp0 using the definition of divides. Rewrite hypothesis Hyp1 using the definition of divides. Rewrite goal using the definition of divides. Fix x the existentially quantified variable in Hyp1. Rewrite the goal using Hyp1. Fix y the existentially quantified variable in Hyp0. Rewrite the goal using Hyp0. Prove the existential claim is true for (y*x). True by arithmetic properties. `

Note that one could use a slightly shorter version of this theorem:

`Theorem refldiv (a b c:nat): (a | b) \land (b | c) -> (a |c). Rewrite goal using the definition of divides. Assume ((\exists  x : nat,  b  =  a  *  x)  \land  (\exists  x  :  nat,  c  =  b  *  x)  ) then prove ( \exists  x  :  nat,  c  =  a  *  x). Eliminate the conjuction in hypothesis Hyp. Fix x the existentially quantified variable in Hyp1. Rewrite the goal using Hyp1. Fix y the existentially quantified variable in Hyp0. Rewrite the goal using Hyp0. Prove the existential claim is true for (y*x). True by arithmetic properties.`

Note also that if you save the latex form of the proof you will obtain
the following:

$divides\,(a\,b:nat)\,:=\,∃\,x:nat,\,b\,=\,a*x.
$

$\forall \,a\,b\,c,\,(a\,|\,b)\,\land (b\,|\,c)\,\Rightarrow \,(a\,|c).$

Proof: In order to show
$$\forall a b c : nat, a | b \land b | c \Rightarrow a | c$$ we pick an
arbitrary $$a$$ and show
$$\forall b c : nat, a | b \land b | c \Rightarrow a | c .$$ In order to
show $$\forall b c : nat, a | b \land b | c \Rightarrow a | c$$ we pick
an arbitrary $$b$$ and show
$$\forall c : nat, a | b \land b | c \Rightarrow a | c .$$ In order to
show $$\forall c : nat, a | b \land b | c \Rightarrow a | c$$ we pick an
arbitrary $$c$$ and show $$a | b \land b | c \Rightarrow a | c .$$

We will assume $$Hyp : a | b \land b | c$$ and show $$a | c .$$

Since we know $$Hyp : a | b \land b | c$$ we also know $$Hyp0 : a | b 
Hyp1 : b | c .$$

We use the definition of $$divides$$ in $$Hyp0$$ to obtain
$$Hyp0 : \exists x : nat, b = a * x$$

We use the definition of $$divides$$ in $$Hyp1$$ to obtain
$$Hyp1 : \exists x : nat, c = b * x$$

Rewriting the definition of $$divides$$ in our conclusion $$a | c$$, we
now need to show $$\exists x : nat, c = a * x .$$

We choose a variable $$x$$ in $$Hyp1$$ to obtain $$x : nat 
Hyp1 : c = b * x .$$

We rewrite the goal using $$Hyp1$$ to obtain
$$\exists x0 : nat, b * x = a * x0 .$$

We choose a variable $$y$$ in $$Hyp0$$ to obtain $$a, b, c, y : nat 
Hyp0 : b = a * y .$$

We rewrite the goal using $$Hyp0$$ to obtain
$$\exists x0 : nat, a * y * x = a * x0 .$$

We shall prove $$\exists x0 : nat, a * y * x = a * x0$$ by showing
$$a * y * x = a * (y * x) .$$

This follows immediately from arithmetic.

This is done Now $$a * y * x = a * (y * x)$$ means that
$$\exists x0 : nat, a * y * x = a * x0 .$$ We have now proved
$$\exists x0 : nat, a * y * x = a * x0$$ and so
$$\exists x0 : nat, b * x = a * x0$$ follows. and so we have proved
$$\exists x0 : nat, b * x = a * x0 .$$ We have now proved
$$\exists x0 : nat, b * x = a * x0$$ and so
$$\exists x0 : nat, c = a * x0$$ follows. and so we have proved
$$\exists x : nat, c = a * x .$$ Therefore we have showed
$$\exists x : nat, c = a * x$$ and so $$a | c .$$ therefore we have
$$a | c .$$ therefore we have $$a | c .$$ We are now done with
$$a | c .$$ We have now showed that if $$Hyp : a | b \land b | c$$ then
$$a | c$$ a proof of $$a | b \land b | c \Rightarrow a | c .$$ Since
$$c$$ was arbitrary this shows
$$\forall c : nat, a | b \land b | c \Rightarrow a | c .$$ Since $$b$$
was arbitrary this shows
$$\forall b c : nat, a | b \land b | c \Rightarrow a | c .$$ Since $$a$$
was arbitrary this shows
$$\forall a b c : nat, a | b \land b | c \Rightarrow a | c .$$

Tactics
=======

This is trivial.
----------------

This will only work on very easy statements. If it works it will solve
the current goal. Try to avoid overuse. Do better than your lecturers.

I cannot prove this.
--------------------

If you are stuck this tactic will “prove” the current goal. If you use
this in a proof at the end if the proof when you try to use Qed you will
get the following error

“Error:Attempt to save a proof with given up goals. If this is really
what you want to do, use Admitted in place of Qed.

To avoid the error just type Admitted instead of Qed.

Prove left hand side.
---------------------

Suppose you want to prove the following goal:

$\cdots\\ 
===== \\ 
P\lor Q$

The above mentioned tactic will the produce a the following goal

$\cdots\\ 
===== \\ 
P$

and so you will have to now prove a simple goal.

Prove right hand side.
----------------------

Symmetric with the above, suppose you want to prove the following goal:

$\cdots\\ 
===== \\ 
P\lor Q$

The above mentioned tactic will the produce a the following goal

$\cdots\\ 
===== \\ 
Q$

Prove VAR in the disjunction.
-----------------------------

This tactic combines the above two. More precisely, suppose you want to
prove the following goal:

$\cdots\\ 
===== \\ 
P\lor Q$

Then applying

`Prove P in the disjunction.`

will produce the goal

$\cdots\\ 
===== \\ 
P$

while applying

`Prove Q in the disjunction.`

will produce the goal

$\cdots\\ 
===== \\ 
Q$

Eliminate the conjuction in hypothesis VAR.
-------------------------------------------

Suppose your goal looks like

$\cdots\\ 
Hyp: P\land Q\\
\cdots \\
===== \\ 
\cdots$

Then applying

`Eliminate the conjunction in hypothesis Hyp.`

will produce a goal similar to the one below:

$\cdots\\ 
Hyp: P\\
Hyp0: Q\\
\cdots\\
===== \\ 
\cdots$

allowing you to use the parts of Hyp independently.

Consider cases based on disjunction in hypothesis VAR.
------------------------------------------------------

Suppose your goal looks like

$\cdots\\ 
Hyp: P\lor Q\\
\cdots \\
===== \\ 
\cdots$

Then applying

`Consider cases based on disjunction in hypothesis Hyp.`

will produce two separate goals similar to the one below:

$\cdots\\ 
Hyp: P\\
\cdots \\
===== \\ 
\cdots$

$\cdots\\ 
Hyp: Q\\
\cdots \\
===== \\ 
\cdots$

obtaining a proof by cases.

Prove the conjunction in the goal by first proving VAR then VAR.
----------------------------------------------------------------

Suppose your goal looks like

$\cdots\\ 
===== \\ 
P\land Q$

Then

`Prove the conjunction in the goal by first proving P then Q.`

will separate the proof in two different goals

$\cdots\\ 
===== \\ 
P$

$\cdots\\ 
===== \\ 
Q$

Assume VAR then prove VAR.
--------------------------

Suppose your goal looks like

$\cdots\\ 
===== \\ 
P\rightarrow Q$

then

`Assume P then prove Q.`

will modify the goal to

$\cdots\\ 
P\\
===== \\ 
Q$

Prove both directions of VAR iff VAR.
-------------------------------------

Suppose your goal looks like

$\cdots\\ 
===== \\ 
P\leftrightarrow Q$

then

`Prove both directions of P iff Q.`

will split the goal into two different goals

$\cdots\\ 
===== \\ 
P\rightarrow Q$

$\cdots\\ 
===== \\ 
Q\rightarrow P$

Fix an arbitrary element VAR.
-----------------------------

Suppose your goal looks like

$\cdots\\ 
===== \\ 
\forall x:S, P(x) $

then

`Fix an arbitrary element a.`

will modify the goal to

$\cdots\\ 
a:S\\
===== \\ 
P(a)$

Fix VAR the existentially quantified variable in VAR.
-----------------------------------------------------

Suppose your goal looks like

$\cdots\\ 
Hyp:\exists x:S, P(x)\\
===== \\ 
\cdots $

then

`Fix a the existentially quantified variable in Hyp.`

will modify the goal to

$\cdots\\ 
a:S\\
Hyp:P(a)\\
===== \\ 
\cdots$

Obtain VAR using variable VAR in the universally quantified hypothesis VAR.
---------------------------------------------------------------------------

Suppose your goal looks like

$\cdots\\ 
Hyp:\forall x:S, P(x)\\
===== \\ 
\cdots $

then

`Obtain Q using variable a in the universally quantified hypothesis Hyp.`

will attempt to apply the result $P(a)$ to prove the result $Q$.

Prove the existential claim is true for VAR.
--------------------------------------------

Suppose your goal looks like

$\cdots\\ 
===== \\ 
\exists x:S, P(x) $

then

`Prove the existential claim is true for a.`

will modify the goal to

$\cdots\\ 
===== \\ 
P(a)$

`Rewrite the goal using VAR.`

Suppose your goal looks like

$\cdots\\ 
Hyp: x= f\\
===== \\ 
 P(x) $

then

`Rewrite the goal using Hyp.`

will replace every occurrence of x in P by f. Similarly if the goal is

$\cdots\\ 
Hyp: x= f\\
===== \\ 
 P(f) $

`Rewrite the goal using Hyp.`

will replace every occurrence of f in P by x.

Finally if Thm is a theorem whose conclusion includes and equality $x=f$
and if the goal of your theorem looks like

$\cdots\\ 
===== \\ 
 P(x) $

Then

`Rewrite the goal using Thm.`

will replace every occurrence of x in P by f.

True by arithmetic properties.
------------------------------

This tactic will attempt to prove the statement by using the ring
properties (commutativity, associativity and distributivity) of the
natural, integers or reals.

Claim VAR by rewriting VAR using VAR.
-------------------------------------

This is very similar to

`Rewrite the goal using VAR.`

The idea is that

`Claim Q by rewriting Hyp using Thm.`

Will attempt to prove the statement $Q$ by applying the rewritten
version of $Hyp$. the rules for $Thm$ are as above.

Claim VAR.
----------

This is forward proof tactic.

`Claim P.`

will introduce a new claim, splitting the goal

$\cdots\\ 
===== \\ 
Q $

into

$\cdots\\ 
===== \\ 
 P $

and

$\cdots\\ 
Hyp:P\\
===== \\ 
 Q $

Rewrite hypothesis VAR using the definition of VAR.
---------------------------------------------------

If the hypothesis Hyp will involve a previous definition d, then

`Rewrite hypothesis Hyp using the definition of d.`

will unfold a definition of d inside Hyp.

Apply induction on VAR.
-----------------------

This is a rather general tactic. It will generally act as an induction
omnibus. More precisely

`Apply induction on n.`

will depend on the (inductive) type of n. For example if $n$ is a
natural number and the goal is

$\cdots\\ 
===== \\ 
 P(n) $

then

`Apply induction on n.`

will split the proof into two goals

$\cdots\\ 
===== \\ 
 P(0) $

and

$\cdots\\ 
 IHn:P(n)\\
===== \\ 
 P( S n) $

On the other hand if $n$ is an integer, the goal

$\cdots\\ 
===== \\ 
 P(n) $

will be split into 3 cases

$\cdots\\ 
===== \\ 
 P(0) $

$\cdots\\ 
 n:positive
===== \\ 
 P(Z.pos\  n) $

$\cdots\\ 
 n:negative
===== \\ 
 P(Z.neg\  n) $

Rewrite goal using the definition of VAR.
-----------------------------------------

If the goal will involve a previous definition d, then

`Rewrite goal using the definition of d.`

will unfold a definition of d inside the conclusion of the goal.

obtain VAR applying VAR to VAR
------------------------------

.

Prove by contradiction.
-----------------------

Assume the goal is:

$\cdots\\ 
===== \\ 
 P $

then

`Prove by contradiction.`

will transform the goal to

$\cdots\\ 
 \neg P\\
===== \\ 
 False$

This follows from reflexivity.

This follows from symmetry.

Apply result VAR.

This follows from assumptions.

Denote VAR by VAR.
