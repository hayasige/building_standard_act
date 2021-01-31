"""
    Rs(rs)

Compute Rs

    `Rs`: 各階の剛性率 in 令82条の6二号イ
# Arguments
`rs`: 各階の層間変形角の逆数
# Example
```jldoctest
julia> round.(Rs([200, 300, 400, 500]); digits=3)
4-element Array{Float64,1}:
0.571
0.857
1.143
1.429
```
"""
function Rs(rs)
# Rs.jl
# 2021-01-24
# rs_mean 当該建築物についてのrsの相加平均
  rs_mean = sum(rs) / length(rs)
  rs ./ rs_mean
end
# eof
