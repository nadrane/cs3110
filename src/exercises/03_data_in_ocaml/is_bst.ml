type 'a binary_tree =
  | Leaf of 'a
  | Tree of 'a * 'a binary_tree * 'a binary_tree;;

let rec is_bst (bst: int binary_tree) =
  let parent_less bst parent_value =
    match bst with
    | Tree(x, left, right) -> parent_value < x
    | Leaf (x) -> parent_value < x
  in
  let parent_greater bst parent_value =
    match bst with
    | Tree(x, left, right) -> parent_value > x
    | Leaf (x) -> parent_value > x
  in
  match bst with
  | Tree(x, left, right) -> is_bst(left)
                            && is_bst(right)
                            && parent_greater left x
                            && parent_less right x
  | Leaf (x) -> true
