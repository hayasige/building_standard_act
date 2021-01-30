"""
    fst(fs0, σt, T0)

Compute fst

令92条の2第2項

`fst`: この項の規定による許容せん断応力度(単位 N/m2)

# Arguments
`fs0`: 前項の規定による許容せん断応力度(単位 N/m2)

`σt`: 高力ボルトに加わる外力により生ずる引張応力度(単位 N/m2)

`T0`: 前項の表に規定する基準張力
# Example
```jldoctest
julia> fst()
```
"""
function fst(fs0, σt, T0)
# fst.jl
# 2021-01-24
  fs0 * (1 - σt / T0)
end
# eof
