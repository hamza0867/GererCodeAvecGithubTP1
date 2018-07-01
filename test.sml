fun swap (pr: int*bool) =
  (#2 pr, #1 pr)

fun sum_two_pairs (pr1: int * int, pr2: int * int ) =
  (#1 pr1) + (#2 pr1) + (#1 pr2) + (#2 pr2)

fun div_mod (x : int, y : int) =
  (x div y, x mod y)

fun max1 (xs: int list) =
  if null xs
  then NONE
  else
    let val tl_ans = max1 (tl xs)
    in if isSome tl_ans andalso valOf tl_ans > hd xs
  then tl_ans
  else SOME (hd xs)
    end




