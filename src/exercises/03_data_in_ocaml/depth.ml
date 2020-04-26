type 'a binary_tree =
  | Leaf of 'a
  | Tree of 'a * 'a binary_tree * 'a binary_tree;;

let rec depth (bst: int binary_tree) =
  match bst with
  | Tree (x, left, right) -> max (depth left) (depth right) + 1
  | Leaf (x) -> 0