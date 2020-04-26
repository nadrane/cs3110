let rec concat (lst: string list) =
  match lst with
  | [] -> ""
  | h::t -> h ^ concat lst