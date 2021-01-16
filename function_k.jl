# function_k.jl
# 8:22 2021/01/02

function k(H, Z) # 令88条4項
  # k 水平震度
  # H 建築物の地下部分の各部分の地盤面からの深さ(m)
  # Z 令88条1項に規定するZの数値
  if H < 0.
    throw(DomainError(H, "H: 範囲外."))
  end
  if Z < 0. || 1. < Z
    throw(DomainError(Z, "Z: 範囲外."))
  end
  if H > 20.
    H = 20.
  end
  0.1 * (1. - H / 40.) * Z
end
# eof
  