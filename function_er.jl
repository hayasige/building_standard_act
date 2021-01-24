function Er(地表面粗度区分, H) 
# function_er.jl
# 8:39 2021/01/02
# H12建告1454第1第2項
# Er 平均風速の高さ方向の分布を表す係数
# H  建築物の高さと軒の高さとの平均(m)

  地表面粗度区分 == 1 && begin Zb =  5; ZG = 250; α = 0.10
  地表面粗度区分 == 2 && begin Zb =  5; ZG = 350; α = 0.15
  地表面粗度区分 == 3 && begin Zb =  5; ZG = 450; α = 0.20
  地表面粗度区分 == 4 && begin Zb = 10; ZG = 550; α = 0.27

  if H < Zb
    return 1.7 * (Zb / ZG)^α
  else
    return 1.7 * (H  / ZG)^α
  end
end
# eof