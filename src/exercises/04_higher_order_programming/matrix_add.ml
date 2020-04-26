let row_vector_add l1 l2 = List.map2 (fun x y -> x + y) l1 l2

let add_matrices l1 l2 = List.map2 row_vector_add l1 l2