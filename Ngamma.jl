"""
    Ngamma(φ)

Compute Ngamma

`Ngamma`: 支持力係数Nγ in 平成13年国土交通省告示第1113号第2表
# Arguments
`φ`: 地盤内部の摩擦角(単位 度)
# Example
```jldoctest
julia> Ngamma(5)
0.1
```
"""
function Ngamma(φ)
# Ngamma.jl
   0 <= φ <  5 && begin x1, y1 =  0,  0;   x2, y2 =  5,  0.1 end
   5 <= φ < 10 && begin x1, y1 =  5,  0.1; x2, y2 = 10,  0.4 end
  10 <= φ < 15 && begin x1, y1 = 10,  0.4; x2, y2 = 15,  1.1 end
  15 <= φ < 20 && begin x1, y1 = 15,  1.1; x2, y2 = 20,  2.9 end
  20 <= φ < 25 && begin x1, y1 = 20,  2.9; x2, y2 = 25,  6.8 end
  25 <= φ < 28 && begin x1, y1 = 25,  6.8; x2, y2 = 28, 11.2 end
  28 <= φ < 32 && begin x1, y1 = 28, 11.2; x2, y2 = 32, 22.0 end
  32 <= φ < 36 && begin x1, y1 = 32, 22.0; x2, y2 = 36, 44.4 end
  36 <= φ < 40 && begin x1, y1 = 36, 44.4; x2, y2 = 40, 93.7 end
  40 <= φ      && return 93.7
  N1 = (x2 - φ) / (x2 - x1) # Ni: 有限要素法の形状関数
  N2 = (φ - x1) / (x2 - x1)
  a1, a2 = y1, y2 
  N1 * a1 + N2 * a2
end
# eof
