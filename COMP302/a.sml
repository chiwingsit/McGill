datatype exp = Nat of int | Plus of exp * exp | Minus of exp * exp |
Mult of exp * exp | If of exp * exp * exp | Bool of bool | 
And of exp * exp | Not of exp | Eq of exp * exp | Lte of exp * exp | 
Var of string | Let of exp * (string * exp) | Fun of string * string * exp |
Apply of exp * exp

(* An auxiliary function to remove all copies of an element from a list. *)
fun remove(s,[])    = []
	| remove(s, x::l) = if (s=x) then remove(s,l) else x::(remove(s,l))

(* This function I wrote constructs the list of all free variables in an
expression.  It does not bother about removing duplicates. The remove
function above will remove duplicates when necessary. The variables are
stored as strings; we do not keep the Var constructor. *)

fun free_list (Nat(n)) = []
	| free_list (Plus(e1,e2)) = (free_list(e1))@(free_list(e2))
	| free_list (Minus(e1,e2)) = (free_list(e1))@(free_list(e2))
	| free_list (Mult(e1,e2)) = (free_list(e1))@(free_list(e2))
	| free_list (If(b,e1,e2)) = (free_list(e1))@(free_list(e2))@(free_list(b))
	| free_list (Bool(b)) = []
	| free_list (And(e1,e2)) = (free_list(e1))@(free_list(e2))
	| free_list (Not(e)) = free_list(e)
	| free_list (Eq(e1,e2)) = (free_list(e1))@(free_list(e2))
	| free_list (Lte(e1,e2)) = (free_list(e1))@(free_list(e2))
	| free_list (Var(x)) = [x]
	| free_list (Let(e1,(x,e2))) = (free_list(e1))@(remove(x,free_list(e2)))
	| free_list (Apply(e1,e2)) = (free_list(e1))@(free_list(e2))
	| free_list (Fun(f,n,body)) = remove(f,(remove(n,free_list(body))))


(* Examples for testing *)

val ex1 = Let(Nat(5),("a",(Plus(Var("a"),Nat(2)))))
val ex2 = Plus(Var("a"),Nat(2))
val ex3 = Let(Var("y"),("x",Plus(Var("x"),Var("z"))))
val ex4 = Let(Nat(3),("z",(Let(Nat(2),("y",ex3)))))
val ex5 = Fun("fac","n",If(Eq(Var("n"),Nat(0)),Nat(1), Mult(Var("n"),(Apply(Var("fac"),(Minus(Var("n"),Nat(1))))))))
val ex6 = Fun("f","n",Plus(Nat(3),Var("n")))
val ex7 = Fun("g","n",If(Eq(Var("n"),Nat(0)),Nat(0),Plus(Nat(1),Apply(Var("g"),(Minus(Var("n"),Nat(1)))))))
