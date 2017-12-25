
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | UNION
    | TIMES
    | SUCC
    | SUBSET
    | SPACE
    | SETMINUS
    | RPAREN
    | POW
    | PLUS
    | OR
    | NOT
    | NE
    | MINUS
    | LPAREN
    | LIST of (
# 33 "formulaparser.mly"
       (string)
# 25 "a.mly.ml"
  )
    | INTERSECTION
    | IN
    | IMPLIES
    | IFF
    | ID of (
# 22 "formulaparser.mly"
       (string)
# 34 "a.mly.ml"
  )
    | FORALL
    | EXISTS
    | EQUALS
    | EOF
    | EMPTYSET
    | DIV
    | COMPLEMENT
    | COMMA
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState54
  | MenhirState52
  | MenhirState51
  | MenhirState49
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState25
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState15
  | MenhirState14
  | MenhirState13
  | MenhirState12
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState6
  | MenhirState5
  | MenhirState3
  | MenhirState2
  | MenhirState1
  | MenhirState0

# 8 "formulaparser.mly"
  
open Ast

# 117 "a.mly.ml"

let rec _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run10 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run23 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | NE | NOT | OR | RPAREN | SUBSET | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv109 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 148 "formulaparser.mly"
                       (Complement(e))
# 589 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv112)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | AND | COMMA | COMPLEMENT | DIV | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | MINUS | NE | NOT | OR | PLUS | RPAREN | SETMINUS | SUBSET | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv113 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 142 "formulaparser.mly"
                                ( Times(e1,e2) )
# 622 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv116)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | AND | COMMA | COMPLEMENT | DIV | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | MINUS | NE | NOT | OR | PLUS | RPAREN | SETMINUS | SUBSET | SUCC | TIMES | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv117 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e : 'tv_expr)), _), _, (f : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 134 "formulaparser.mly"
                        (Pow(e,f))
# 651 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv120)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | AND | COMMA | COMPLEMENT | DIV | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | MINUS | NE | NOT | OR | PLUS | POW | RPAREN | SETMINUS | SUBSET | SUCC | TIMES | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv121 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 137 "formulaparser.mly"
                             ( Iff(e1,e2) )
# 678 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv124)
    | MenhirState54 | MenhirState52 | MenhirState51 | MenhirState49 | MenhirState46 | MenhirState48 | MenhirState33 | MenhirState45 | MenhirState35 | MenhirState43 | MenhirState41 | MenhirState37 | MenhirState39 | MenhirState9 | MenhirState11 | MenhirState13 | MenhirState16 | MenhirState30 | MenhirState32 | MenhirState18 | MenhirState26 | MenhirState28 | MenhirState22 | MenhirState24 | MenhirState20 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | NE | NOT | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a : 'tv_expr)), _, (b : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_expr = 
# 162 "formulaparser.mly"
                                                ( List ([ a; b]) )
# 728 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv128)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | NE | NOT | OR | RPAREN | SUBSET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 145 "formulaparser.mly"
                                ( Union(e1,e2) )
# 775 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv132)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | AND | COMMA | COMPLEMENT | DIV | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | MINUS | NE | NOT | OR | PLUS | RPAREN | SUBSET | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv133 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 141 "formulaparser.mly"
                                   ( Setminus(e1,e2) )
# 810 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv136)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | AND | COMMA | COMPLEMENT | DIV | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | NE | NOT | OR | RPAREN | SUBSET | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 139 "formulaparser.mly"
                               ( Add(e1,e2) )
# 849 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv140)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | AND | COMMA | COMPLEMENT | DIV | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | NE | NOT | OR | PLUS | RPAREN | SUBSET | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 140 "formulaparser.mly"
                                ( Minus(e1,e2) )
# 886 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv144)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv147 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | NE | NOT | OR | RPAREN | SUBSET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 147 "formulaparser.mly"
                                       (Intersection(e1,e2) )
# 933 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv148)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | AND | COMMA | COMPLEMENT | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | NE | NOT | OR | RPAREN | SUBSET | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv149 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 138 "formulaparser.mly"
                            (Div(e1, e2))
# 974 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv152)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | NE | NOT | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 149 "formulaparser.mly"
                             (Subset(e1, e2))
# 1025 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv156)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | NE | NOT | OR | RPAREN | SUBSET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv157 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 160 "formulaparser.mly"
                             ( In(e1,e2) )
# 1072 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv160)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState33 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMPLEMENT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | EMPTYSET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | EXISTS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | FORALL ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ID _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | NOT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | SUCC ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv162)
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | EMPTYSET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | EQUALS ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FORALL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | OR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv164)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EMPTYSET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EQUALS ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | FORALL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | OR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | COMMA | EOF | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 144 "formulaparser.mly"
                             ( Or(e1,e2) )
# 1227 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv168)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 152 "formulaparser.mly"
                          (Not(Equals(e1, e2)))
# 1282 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv172)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | NE | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 136 "formulaparser.mly"
                                 ( Implies(e1,e2) )
# 1337 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv176)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | EMPTYSET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FORALL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | AND | COMMA | EOF | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv177 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 151 "formulaparser.mly"
                              (Equals(e1, e2))
# 1400 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv180)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EMPTYSET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EQUALS ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FORALL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | COMMA | EOF | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 143 "formulaparser.mly"
                              ( And(e1,e2) )
# 1467 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv184)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv187 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | NE | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv185 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 155 "formulaparser.mly"
                                      (Exists(e1 , e3))
# 1523 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv188)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState46 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMPLEMENT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | EMPTYSET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | EXISTS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | FORALL ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ID _v ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | LPAREN ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | NOT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | SUCC ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv190)
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | EMPTYSET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | EQUALS ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | FORALL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | OR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv192)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv195 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | NE | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expr)), _), _, (e3 : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 158 "formulaparser.mly"
                                      (Forall(e1 , e3))
# 1665 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv196)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EMPTYSET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EQUALS ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | FORALL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | NE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | OR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState49 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 161 "formulaparser.mly"
                             ((e))
# 1730 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)) : 'freshtv200)
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv202)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
        | AND | COMMA | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | NE | OR | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 154 "formulaparser.mly"
                (Not(e))
# 1791 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv206)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | AND | COMMA | COMPLEMENT | DIV | EMPTYSET | EOF | EQUALS | EXISTS | FORALL | IMPLIES | IN | INTERSECTION | MINUS | NE | NOT | OR | PLUS | RPAREN | SETMINUS | SUBSET | TIMES | UNION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 135 "formulaparser.mly"
                  (Succ(e))
# 1820 "a.mly.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv210)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | COMPLEMENT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | DIV ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EMPTYSET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState54 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 113 "formulaparser.mly"
       (Ast.expr)
# 1853 "a.mly.ml"
            ) = 
# 121 "formulaparser.mly"
                  ( e )
# 1857 "a.mly.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 113 "formulaparser.mly"
       (Ast.expr)
# 1865 "a.mly.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 113 "formulaparser.mly"
       (Ast.expr)
# 1873 "a.mly.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 113 "formulaparser.mly"
       (Ast.expr)
# 1881 "a.mly.ml"
            )) : (
# 113 "formulaparser.mly"
       (Ast.expr)
# 1885 "a.mly.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv212)) : 'freshtv214)) : 'freshtv216)) : 'freshtv218)) : 'freshtv220)
        | EQUALS ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | EXISTS ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | FORALL ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | ID _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
        | IFF ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | IMPLIES ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | IN ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | INTERSECTION ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | LPAREN ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | MINUS ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | NE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | NOT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | OR ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | PLUS ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | POW ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SETMINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SUBSET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | SUCC ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | TIMES ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | UNION ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv222)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv9 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv11 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv15 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv17 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state) * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv25 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv29 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv33 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_expr) * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_expr) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv108)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "formulaparser.mly"
       (string)
# 2275 "a.mly.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 22 "formulaparser.mly"
       (string)
# 2285 "a.mly.ml"
    )) : (
# 22 "formulaparser.mly"
       (string)
# 2289 "a.mly.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 131 "formulaparser.mly"
           ( Var x )
# 2294 "a.mly.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 129 "formulaparser.mly"
             ( EmptySet )
# 2362 "a.mly.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 113 "formulaparser.mly"
       (Ast.expr)
# 2408 "a.mly.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMPLEMENT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EMPTYSET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EXISTS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FORALL ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LPAREN ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SUCC ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 219 "/Users/Hoff/.opam/system/lib/menhir/standard.mly"
  


# 2452 "a.mly.ml"
