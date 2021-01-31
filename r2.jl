"""
    r2(r0, l0, l, h0, h)

Compute r2

`r2`: 当該開口部を有する耐力壁のせん断耐力の低減率 in 平成19年国土交通省告示第594号第1三号(3)
# Arguments
`r0`, `l0`, `l`, `h0`, `h`: それぞれ同号(1)に規定するr0, l0, l, h0, hを表すものとする。
# Example
```jldooctest
julia> round(r2(0.333, 2, 6, 1, 3); digits=3)
0.667
```
"""
function r2(r0, l0, l, h0, h)
# r2.jl

  1 - max(r0, l0/l, h0/h)
end
# eof
