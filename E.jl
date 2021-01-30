"""
    E(Er, Gf)

Compute E

# Arguments
- H12建告1454第1
- `E`: 令87条2項に規定するE
- `Er`: 平均風速の高さ方向の分布を表す係数
- `Gf`: ガスト影響係数

# Example
```jldoctest
julia> E(2, 3)
12
```
""" 
function E(Er, Gf)
# E.jl
# 8:22 2021/01/02

  Er^2 * Gf
end
# eof
  