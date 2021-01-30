"""
    Nc(φ)

Compute Nc

`Nc`: 支持力係数 in 平成13年国土交通省告示第1113号第2表

# Arguments
`φ`: 地盤内部の摩擦角(単位 度)
# Example
```jldoctest
julia> round(Nc(5); digits=3)
6.5
```
"""
function Nc(φ)
# Nc.jl
   0 <= φ <  5 && begin x1, y1 =  0,  5.1; x2, y2 =  5,  6.5 end
   5 <= φ < 10 && begin x1, y1 =  5,  6.5; x2, y2 = 10,  8.3 end
  10 <= φ < 15 && begin x1, y1 = 10,  8.3; x2, y2 = 15, 11.0 end
  15 <= φ < 20 && begin x1, y1 = 15, 11.0; x2, y2 = 20, 14.8 end
  20 <= φ < 25 && begin x1, y1 = 20, 14.8; x2, y2 = 25, 20.7 end
  25 <= φ < 28 && begin x1, y1 = 25, 20.7; x2, y2 = 28, 25.8 end
  28 <= φ < 32 && begin x1, y1 = 28, 25.8; x2, y2 = 32, 35.5 end
  32 <= φ < 36 && begin x1, y1 = 32, 35.5; x2, y2 = 36, 50.6 end
  36 <= φ < 40 && begin x1, y1 = 36, 50.6; x2, y2 = 40, 75.3 end
  40 <= φ      && return 75.3

  N1 = (x2 - φ) / (x2 - x1)
  N2 = (φ - x1) / (x2 - x1)
  a1, a2 = y1, y2 
  
  N1 * a1 + N2 * a2
end
