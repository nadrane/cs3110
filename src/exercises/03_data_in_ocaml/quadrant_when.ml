type quad = I | II | III | IV

let quadrant : int*int -> quad option = fun (x,y) ->
  match x, y with
  | x, y when x > 0 && y > 0 -> Some I
  | x, y when x < 0 && y > 0 -> Some II
  | x, y when x < 0 && y < 0 -> Some III
  | x, y when x > 0 && y < 0 -> Some IV
  | _ -> None