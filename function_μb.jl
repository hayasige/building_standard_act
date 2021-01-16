# function_μb.jl
# 8:02 2021/01/02

function μb(β)	# 令86条、屋根形状係数
  if 0. <= β <= 60.
    return sqrt(cos(1.5β * π / 180.))
  elseif 60. < β
    return 0.
  else
    throw(DomainError(β, "function_μb(β): 引数βは0以上でなければならない。"))
  end
end
