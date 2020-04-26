let rec drop lst n =
  if n = 0 then lst else
    match lst with
    | [] -> []
    | h::t -> drop t (n-1)