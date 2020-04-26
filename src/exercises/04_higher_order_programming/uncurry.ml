let uncurry a =
  let f pair = a (fst pair) (snd pair) in f
