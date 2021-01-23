# function_ai.jl
# 2021/01/02

function ai(αi, T)
  if αi < 0 || 1 < αi
    throw(DomainError(αi, "αi：範囲外."))
  end
  if T < 0.
    throw(DomainError(T, "T：範囲外."))
  end
  1. +(1. / sqrt(αi) - αi ) * 2T /(1. + 3T)
end
# eof