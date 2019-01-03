def judge_circle(moves)
  u_d_moves = 0
  l_r_moves = 0
  i = 0
  while i < moves.length do
    case moves[i]
    when 'U'
      u_d_moves += 1
    when 'D'
      u_d_moves -= 1
    when 'L'
      l_r_moves -= 1
    else
      l_r_moves += 1
    end
    i += 1
  end
  if u_d_moves == 0 and l_r_moves == 0
    return true
  else
    return false
  end
end

moves = 'UD'
judge_circle(moves)
