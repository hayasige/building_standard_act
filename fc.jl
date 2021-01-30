"""
    fc(F, λ)

Compute fc

`fc`: 長期に生ずる力に対する圧縮材の座屈の許容応力度(単位 N/m2)\n
平成13年国土交通省告示第1024号第1三号ロ、 炭素鋼

# Arguments
`F`: 平成12年建設省告示第2464号第1に規定する基準強度(単位 N/m2)\n
`λ`: 有効細長比

# Example
```jlcodtest
julia> round(fc(235, 100))
86.319
```
"""
function fc(F, λ)
# function_fc.jl
# `Λ`: 限界細長比

    Λ = 1500 / sqrt(F / 1.5)
    λ <= Λ && return F * (1 - 2/5 * (λ / Λ)^2) / (3/2 + 2/3 * (λ / Λ)^2)
    λ >  Λ && return 18 / 65 * F / (λ / Λ)^2
end
# eof
