"""
    alpha(dr, mu_b, d)

Compute α

`alpha`: 割り増し係数α(当該数値が1.0未満の場合には、1.0) in 平成19年国土交通省告示第594号第第2三号ホ
# Arguments
`dr`: 特定緩勾配屋根部分の最上端から最下端までの水平投影長さ及び屋根勾配に応じて、同号ホの表に掲げる数値(単位 m)

`mu_b`: 令第86条第4項に規定する屋根形状係数μb

`d`:  令第86条第1項に規定する垂直積雪量(単位 m)
# Example
```jldoctest
julia> alpha(0.14, 1, 0.3)
```
"""
function alpha(dr, mu_b, d)
# alpha.jl
  0.7 + sqrt(dr / (mu_b * d))
end
# eof
