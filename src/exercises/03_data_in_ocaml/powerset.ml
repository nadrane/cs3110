let next_step accum nextElement =
  let rec iter i =
    if i = List.length(accum)
    then accum
    else (nextElement::(List.nth accum i))::(iter (i + 1))
  in
  iter 0

let powerset lst =
  let rec iter accum i =
    if i = List.length lst
    then accum
    else iter (next_step accum (List.nth lst i)) (i + 1)
  in
  iter [[]] 0
