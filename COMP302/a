fun abs(x:real) = if (x < 0.0) then ~x else x
fun close(x:real,y:real,tol) = (abs(x-y) < tol)
exception DivZero
exception Diverge
fun deriv (f, dx:real) = fn x => ((f(x + dx) - f(x))/dx)

(* In order to avoid divde-by-zero situations we raise an exception. *)
fun improve(guess:real,f,tol) = 
  let
	val df = deriv(f, 0.001)
    val den = df(guess)
  in
    if (close(den,0.0,tol)) then raise DivZero
    else 
		guess - (f(guess)/den)
  end

(* In order to avoid divergence, we abort the computation if it takes more
than 10000 steps. *)

fun newton(f,guess:real,tol:real) =
  let
    fun helper(f,guess:real,tol:real,counter:int) =
      if (counter = 0) then raise Diverge
      else
		if(close(improve(guess,f,tol),0.0,tol)) then improve(guess,f,tol)
		else
			helper(f,improve(guess,f,tol),tol,counter-1)
  in
    helper(f,guess,tol,10000)
  end
