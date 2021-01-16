# function_rt.jl
# 10:57 2021/01/02

function Rt(h, α, 地盤種別) # S55告示１７９３号第2
  if h < 0. || 60. < h
    throw(DomainError(h, "h:範囲外."))
  end

  if α < 0 || 1.0 < α
    throw(DomainError(α, "α:範囲外."))
  end

  if 地盤種別 == 1
    Tc = 0.4
  elseif 地盤種別 == 2
    Tc = 0.6
  elseif 地盤種別 == 3
    Tc = 0.8
  else
    throw(DomainError(地盤種別, "地盤種別:範囲外."))
  end

  T = h * (0.02 + 0.01 * α)
  if T < Tc
    return 1.
  elseif Tc <= T < 2Tc
    return 1. - 0.2 * (T / Tc - 1.)^2
  else
    return 1.6Tc / T
  end
end
# eof
