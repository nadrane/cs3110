let rec power n times =
  if times = 0 then 1
  else (iter n (times -1)) * n