# function_gf.jl
# 9:58 2021/01/02

function Gf(地表面粗度区分, H)
  # H 建築物の高さと軒の高さとの平均(m)
  H1, H2 = 10., 40.
  h  = H2 - H1
  N1 = (H2 - H ) / h
  N2 = (H  - H1) / h

  if 地表面粗度区分 == 1
    Gf1, Gf2 = 2.0, 1.8
  elseif 地表面粗度区分 == 2
    Gf1, Gf2 = 2.2, 2.0
  elseif 地表面粗度区分 == 3
    Gf1, Gf2 = 2.5, 2.1
  elseif 地表面粗度区分 == 4
    Gf1, Gf2 = 3.1, 2.3
  else
    throw(地表面粗度区分, "地表面粗度区分：範囲外.")
  end

  if H < 0
    throw(H, "H：範囲外.")    
  elseif 0. <= H <= 10.
    return Gf1
  elseif 40. <= H
    return Gf2
  else
    return N1 * Gf1 + N2 * Gf2
  end

end