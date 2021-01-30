"""
    Ci(Z, Rt, Ai, C0)

compute Ci

# Arguments
`Ci`: 建築物の地上部分の一定高さにおける地震層せん断力係数(令88条1項)

`Z`:  その地方における過去の地震の記録に基づく震害の程度及び地震活動の状況その他地震の性状に応じて1.0から0.7までの範囲内において国土交通大臣が定める数値
(令88条1項, S55告示1793号第1)

`Rt`: 建築物の振動特性を表すものとして、建築物の弾性域における固有周期及び地盤の種類に応じて国土交通大臣が定める方法により算出した数値
(令88条1項, S55告示1793号第2)

`Ai`: 建築物の振動特性に応じて地震層せん断力係数の建築物の高さ方向の分布を表すものとして国土交通大臣が定める方法により算出した数値
(令88条1項, S55告示1793号第3)

`C0`: 標準せん断力係数(令88条1項) 

# Example
```julia-repl
julia> round(Ci(1.0, 0.9, 1.2, 0.2); digits=3)
0.216
```
"""
function Ci(Z, Rt, Ai, C0) 
# Ci.jl
# 10:39 2021/01/02

  Z * Rt .* Ai * C0
end