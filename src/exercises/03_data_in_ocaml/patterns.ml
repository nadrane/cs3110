let firstBigRed lst = List.nth lst 0 = "bigred"

let twoOrFour lst =
  match lst with
  | a::b::[] -> true
  | a::b::c::d::[] -> true
  | _ -> false

let firstTwoEqual lst = List.nth lst 0 = List.nth lst 1


