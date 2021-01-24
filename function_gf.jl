function Gf(地表面粗度区分, H)

# function_gf.jl
# 9:58 2021/01/02
# 平成12年建設省告示第1454号第1第3項
# Gf ガスト影響係数Gf
# H 建築物の高さと軒の高さとの平均(m)

  H1, H2 = 10, 40
  h  = H2 - H1
  N1 = (H2 - H ) / h
  N2 = (H  - H1) / h

  地表面粗度区分 == 1 && begin Gf1, Gf2 = 2.0, 1.8 end
  地表面粗度区分 == 2 && begin Gf1, Gf2 = 2.2, 2.0 end
  地表面粗度区分 == 3 && begin Gf1, Gf2 = 2.5, 2.1 end
  地表面粗度区分 == 4 && begin Gf1, Gf2 = 3.1, 2.3 end

  0  <= H < 10 && return Gf1
  10 <= H < 40 && return N1 * Gf1 + N2 * Gf2
  40 <= H      && return Gf2
end
# eof
