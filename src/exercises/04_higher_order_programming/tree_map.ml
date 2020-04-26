type 'a tree =
  | Leaf
  | Node of 'a * 'a tree * 'a tree

let rec tree_map f tree =
  match tree with
  | Leaf -> Leaf
  | Node(x, left, right) -> Node(f x, tree_map f left, tree_map f right)

let add_1 = tree_map (fun x -> x + 1)