"""
    Er(地表面粗度区分, H)

compute Er

# Arguments
- H12建告1454第1第2項
- `Er`: 平均風速の高さ方向の分布を表す係数
- `地表面粗度区分`: Ⅰ-> 1, Ⅱ-> 2, Ⅲ-> 3, Ⅳ-> 4
- `H`:  建築物の高さと軒の高さとの平均(m)

# Example
```jldoctest
julia> round(Er(1, 5); digits = 3)
1.150
```
"""
function Er(地表面粗度区分::Int, H) 
# function_er.jl
# 8:39 2021/01/02

  地表面粗度区分 == 1 && begin Zb =  5; ZG = 250; α = 0.10 end
  地表面粗度区分 == 2 && begin Zb =  5; ZG = 350; α = 0.15 end
  地表面粗度区分 == 3 && begin Zb =  5; ZG = 450; α = 0.20 end
  地表面粗度区分 == 4 && begin Zb = 10; ZG = 550; α = 0.27 end

  if H < Zb
    return 1.7 * (Zb / ZG)^α
  else
    return 1.7 * (H  / ZG)^α
  end
end
# eof