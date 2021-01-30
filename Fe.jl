"""
    Fe(Re)

Compute Fe

`Fe`: 昭和55年建設省告示第1972号第7表2 

# Arguments
`Re`: 各階の偏心率(令82条の6第二号, 平成19年国土交通省告示第594号第5)

# Example
```jldoctest
julia> Fe(0.15)
1
```
"""
function Fe(Re)
# Fe.jl
  Re <= 0.15 && return 1
  0.15 < Re < 0.3 && begin 
    x1, y1 = 0.15, 1
    x2, y2 = 0.3,  1.5
    N1 = (x2 - Re) / (x2 - x1) # Ni: 有限要素法の形状関数
    N2 = (Re - x1) / (x2 - x1)
    return N1 * y1 + N2 * y2
  end
  0.3 <= Re && return 1.5
end
# eof
