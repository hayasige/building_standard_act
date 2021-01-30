"""
   k(H, Z)

compute k

`k` : 水平震度(令88条4項)

# Arguments
`H`: 建築物の地下部分の各部分の地盤面からの深さ(20を超えるときは20とする。)(m)

`Z`: 令88条1項に規定するZの数値
# Example
```jldoctest
julia> k(10, 1)
0.075
```
"""
function k(H, Z) 
# function_k.jl
# 8:22 2021/01/02
  if 20 < H
    H = 20
  end
  0.1 * (1 - H / 40) * Z
end
# eof
  