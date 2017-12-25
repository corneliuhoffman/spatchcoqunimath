
(* The type of tokens. *)

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
  | LIST of (string)
  | INTERSECTION
  | IN
  | IMPLIES
  | IFF
  | ID of (string)
  | FORALL
  | EXISTS
  | EQUALS
  | EOF
  | EMPTYSET
  | DIV
  | COMPLEMENT
  | COMMA
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
