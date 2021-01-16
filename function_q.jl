# function_q.jl
# 8:07 2021/01/02

function q(E, V0) # 令87条
  # q 速度圧(N/m2)
  # E H12建告1454号第1のE
  # V0 風速(m/s)
  if V0 < 30. || 46. < V0
    throw(DomainError(V0, "V0: 範囲外."))
  end
  0.6E * V0^2
end
# eof
