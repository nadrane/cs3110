let rec sum lst =
  match lst with
  | [] -> 0
  | h::t -> sum t + h

let rec reverse lst =
  let rec iter remainingLst accum =
    match remainingLst with
    | [] -> accum
    | h::t -> iter t (h::accum) in
  iter lst []


let rec append (lst1: int list) (lst2: int list) =
  match lst1 with
  | [] -> lst2
  | h::t -> h::(append t lst2)