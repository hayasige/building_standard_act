"""
    Rt(h, α, 地盤種別)

Compute Rt

`Rt`: 建築物の振動特性を表すものとして、建築物の弾性域における固有周期及び地盤の種類に応じて国土交通大臣が定める方法により算出した数値、令88条第1項、S55告示1739号第2

# Arguments
`h`: 当該建築物の高さ(単位 m)

`α`: 当該建築物のうち柱及びはりの大部分が木造又は鉄骨造である階(地階を除く。)の高さの合計のhに対する比

`地盤種別`: 第一種地盤->1, 第二種地盤->2, 第三種地盤->3
# Example
```jldoctest
julia> Rt(10, 0.5, 2)
1
```
"""
function Rt(h, α, 地盤種別)
# Rt.jl
# 10:57 2021/01/02
  if 地盤種別 == 1
    Tc = 0.4
  elseif 地盤種別 == 2
    Tc = 0.6
  elseif 地盤種別 == 3
    Tc = 0.8
  end
  T = h * (0.02 + 0.01 * α)
  T   <  Tc      && return 1
  Tc  <= T < 2Tc && return 1 - 0.2 * (T / Tc - 1)^2
  2Tc <= T       && return 1.6Tc / T
end
# eof
