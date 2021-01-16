# function_t.jl
# 11:46 2021/01/02

function t(h, α)
  if h<0. || 60. < h
    throw(DomainError(h,"h：範囲外."))
  end
  if α < 0. || 1. < α
    throw(DomainError(α,"α：範囲外."))
  end

  h * (0.02 + 0.01 * α)
end
# eof