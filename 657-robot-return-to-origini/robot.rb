def judge_circle(moves)
  u_moves = 0
  d_moves = 0
  l_moves = 0
  r_moves = 0
  i = 0
  while i < moves.length do
    case moves[i]
    when 'U'
      u_moves += 1
    when 'D'
      d_moves += 1
    when 'L'
      l_moves += 1
    else
      r_moves += 1
    end
    i += 1
  end
  if u_moves == d_moves and l_moves == r_moves
    return true
  else
    return false
  end
end

moves = 'LLRR'
judge_circle(moves)
