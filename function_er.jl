# function_er.jl
# 8:39 2021/01/02

function Er(地表面粗度区分, H) # H12建告1454第1第2項
  # Er 平均風速の高さ方向の分布を表す係数
  # H  建築物の高さと軒の高さとの平均(m)
  if 地表面粗度区分 != 1 && 地表面粗度区分 != 2 && 
     地表面粗度区分 != 3 && 地表面粗度区分 != 4
    throw(DomainError(地表面粗度区分, "地表面粗度区分は範囲外."))
  end
  if H < 0
    throw(DomainError(H, "Hは範囲外."))
  end

  if 地表面粗度区分 == 1
    Zb = 5.
    ZG = 250.
    α = 0.10
  elseif 地表面粗度区分 == 2
    Zb = 5.
    ZG = 350.
    α = 0.15
  elseif 地表面粗度区分 == 3
    Zb = 5.
    ZG = 450.
    α = 0.20
  elseif 地表面粗度区分 == 4
    Zb = 10.
    ZG = 550.
    α = 0.27
  end
  if H < Zb
    return 1.7 * (Zb / ZG)^α
  else
    return 1.7 * (H  / ZG)^α
  end
end
# eof