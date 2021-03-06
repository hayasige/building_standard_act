"""
    Qc(Qb, σ0, b, j, Fc)

Compute Qc

`Qc`: 柱のせん断耐力(単位 N) in 平成19年国土交通省告示第594号第4三号ハ表
# Arguments
`Qb`: 当該柱を梁とみなして計算した場合における部材のせん断耐力(単位 N)

`σ0`: 平均軸応力度(Fcに0.4を乗じた数値を超える場合は、Fcに0.4を乗じた数値とする。)(単位 N/mm2)

`b`: 柱の幅(単位 mm)

`j`:  応力中心距離(柱の有効せいに7/8を乗じて計算した数値とする。)(単位 mm)
# Example
```jldoctest
julia> round(Int, Qc(840761, 0.4, 300, 875, 24))
851261.0
```
"""
function Qc(Qb, σ0, b, j, Fc)
# Qc.jl
# 2021-01-23
  if σ0 > Fc * 0.4
    σ0 = Fc * 0.4
  end
  Qb + 0.1σ0 * b * j
end
# eof
