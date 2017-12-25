%token IF THEN ELSE VAR

%%
stmt:     expr
if_stmt:
| if_stmt ;
  IF expr THEN stmt
| IF expr THEN stmt ELSE stmt
;
expr:     VAR
        ;
