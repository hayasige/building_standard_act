# function Fe(Re)
# 昭和55年建設省告示第1972号第7表2
# Fe 
# Re 偏心率

  if Re <= 1
    1
  elseif 0.15 < Re < 0.3
    x1 = 0.15
    y1 = 1
    x2 = 0.3
    y2 = 1.5
    N1 = (x2 - Re) / (x2 - x1)
    N2 = (Re - x1) / (x2 - x1)
    N1 * y1 + N2 * y2
  else
    1.5
  end
end
# eof
