
type 'a t = ('a, 'a list) Hashtbl.t


val mk_graph : ('a * 'a) list -> 'a t
val dfs : ('a -> unit) -> ('a -> unit) -> 'a t -> 'a -> unit
val topological_sort : 'a t -> 'a list
                                                          
