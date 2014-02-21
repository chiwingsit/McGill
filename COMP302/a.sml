datatype 'a rlist = Empty | RCons of 'a * (('a rlist) ref)
	
fun insert(f, node, l as ref Empty) = (l := RCons(node, ref Empty))
	|insert(f, node, l as (ref (RCons(h,t)))) =
	if f(node,h)
		then (l := RCons(node, ref (!l)))
		else insert(f, node, t)