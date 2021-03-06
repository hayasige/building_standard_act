"""
    Nq(φ)

Compute Nq

`Nq`: 支持力係数 in 平成13年国土交通省告示第1113号第2表
# Argumnts
`φ`: 地盤内部の摩擦角(単位 度)
# Example
```jldoctest
julia> round(Nq(5))
1.6
```
"""
function Nq(φ)
# Nq.jl
   0 <= φ <  5 && begin x1, y1 =  0,  1.0; x2, y2 =  5,  1.6 end
   5 <= φ < 10 && begin x1, y1 =  5,  1.6; x2, y2 = 10,  2.5 end
  10 <= φ < 15 && begin x1, y1 = 10,  2.5; x2, y2 = 15,  3.9 end
  15 <= φ < 20 && begin x1, y1 = 15,  3.9; x2, y2 = 20,  6.4 end
  20 <= φ < 25 && begin x1, y1 = 20,  6.4; x2, y2 = 25, 10.7 end
  25 <= φ < 28 && begin x1, y1 = 25, 10.7; x2, y2 = 28, 14.7 end
  28 <= φ < 32 && begin x1, y1 = 28, 14.7; x2, y2 = 32, 23.2 end
  32 <= φ < 36 && begin x1, y1 = 32, 23.2; x2, y2 = 36, 37.8 end
  36 <= φ < 40 && begin x1, y1 = 36, 37.8; x2, y2 = 40, 64.2 end
  40 <= φ      && return 64.2
  N1 = (x2 - φ) / (x2 - x1) # Ni: 有限要素法の形状関数
  N2 = (φ - x1) / (x2 - x1)
  a1, a2 = y1, y2 
  N1 * a1 + N2 * a2
end
# eof
