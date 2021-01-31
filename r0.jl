"""
   r0(h0, l0, h, l)

Compute r0

`r0`: 開口周比 in 平成19年国土交通省告示第594号第1三号イ(1)
# Arguments
`h0`: 開口部の高さ(単位 m)

`l0`: 開口部の長さ(単位 m)

`h`: 開口部を有する耐力壁の上下のはりの中心間距離(単位 m)

`l`: 開口部を有する耐力壁の両端の柱の中心間距離(単位 m)
# Example
```jldoctest
julia> round(r0(1, 2, 3, 6); digits=3)
0.333
```
"""
function r0(h0, l0, h, l)
# r0.jl
  sqrt(h0 * l0 / (h * l))
end
# eof
