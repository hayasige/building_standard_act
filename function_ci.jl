# function_ci.jl
# 10:39 2021/01/02

function C(Z, Rt, Ai, C0) # 令88条1項
  # Ci 地震層せん断力係数
  # Z  S55告示1793号第1
  # Rt S55告示1793号第2
  # Ai S55告示1793号第3
  # C0 標準層せん断力係数
  Z * Rt .* Ai * C0
end