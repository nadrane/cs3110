let rec calculate_budget_1 budget expenses =
  match expenses with
  | [] -> budget
  | x::xs -> calculate_budget_1 (budget - x) xs

let calculate_budget_2 budget expenses =
  List.fold_left (fun accum expense -> accum - expense) budget expenses

let calculate_budget_3 budget expenses =
  List.fold_right (fun expense accum  -> accum - expense) expenses budget