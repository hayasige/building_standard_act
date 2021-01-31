"""
    r1(r0)

Compute r1

`r1`: 同号(1)の開口部を有する耐力壁のせん断剛性低減率 in 平成19年国土交通省告示第594号第1三号(2)
# Arguments
`r0`: 同号(1)に規定するr0
# Example
```jldocs
julia> round(r1(0.333); digits=3)
0.584
```
"""
function r1(r0)
# function_r1.jl
# 平成19年国土交通省告示第594号第1三号(2)

  1 - 1.25r0
end
# eof
