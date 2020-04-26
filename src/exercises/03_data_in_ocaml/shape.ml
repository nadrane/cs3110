type 'a binary_tree =
  | Leaf of 'a
  | Tree of 'a * 'a binary_tree * 'a binary_tree;;

let rec shape (bst1: int binary_tree) (bst2: int binary_tree) =
  match bst1, bst2 with
  | Tree(_, left1, right1), Tree(_, left2, right2) -> shape left1 left2 && shape right1 right2
  | Tree(_), Leaf(_) -> false
  | Leaf(_), Tree(_) -> false
  | Leaf(_), Leaf(_) -> true