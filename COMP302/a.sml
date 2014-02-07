datatype 'a tree =
         Empty | Node of 'a tree * 'a * 'a tree

fun flatten([], item, [])