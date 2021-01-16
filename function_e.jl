# function_e.jl
# 8:22 2021/01/02

function E(Er, Gf) # H12建告1454第1
  # 令87条2項に規定するE
  # 平均風速の高さ方向の分布を表す係数
  # ガスト影響係数
  if Er <0
    throw(DomainError(Er, "Er: 範囲外."))
  end
  if Gf <0
    throw(DomainError(Gf, "Gf: 範囲外."))
  end
  return Er^2 * Gf
end
# eof
  