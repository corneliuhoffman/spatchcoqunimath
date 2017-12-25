 let testinglist = [
"∏  y  :  T,  iscontr  (hfiber  (idfun  T)  y)";
(* "∑  cntr  :  hfiber  (idfun  T)  y,  ∏  t  :  hfiber  (idfun  T)  y,  t  =  cntr ";
"x,,  e  =  hfiberpair  (idfun  T)  y  (idpath  y)";
 "∑ x t, z  ⨿  s";
 "∏x:nat, x + y";
 " l ∈ y ∩ x ∪ y ∩ z";
 "a | b" ;
 "c ~ d";
 "a a a a";
 " a and ¬ d or c" *)];;

List.map (fun expr-> print_string ((Ast.to_string (Formulaparsing.parse expr))^(Formulaparsing.print (Formulaparsing.parse expr))^"\n")) testinglist;