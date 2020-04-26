let rec fibFast n pp p =
  if n = 1 then p
  else fibFast (n - 1) p (p + pp)