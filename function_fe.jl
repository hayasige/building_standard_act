function Fe(Re)

# 昭和55年建設省告示第1972号第7表2 
# Re 偏心率

  if Re <= 1
    return 1
  elseif 0.15 < Re < 0.3
    x1, y1 = 0.15, 1
    x2, y2 = 0.3,  1.5
    N1 = (x2 - Re) / (x2 - x1)
    N2 = (Re - x1) / (x2 - x1)
    return N1 * y1 + N2 * y2
  elseif 0.3 <= Re
    return 1.5
  end
end
# eof
