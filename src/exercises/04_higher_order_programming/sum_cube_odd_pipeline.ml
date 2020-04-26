let (--) i j =
  let rec from i j l =
    if i>j then l
    else from i (j-1) (j::l)
  in from i j []

let sum_cube_odd n =
  0--n
  |> List.filter(fun x -> x mod 2 = 1)
  |> List.map(fun x -> x * x * x)
  |> List.fold_left (fun x y -> x + y) 0