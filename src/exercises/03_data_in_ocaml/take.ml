let take lst n =
  let rec iter remaining n accum =
    if n = 0 then List.rev(accum) else
      match remaining with
      | [] -> accum
      | h::t -> iter t (n-1) (h::accum) in
  iter lst n []

