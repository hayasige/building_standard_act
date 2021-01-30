"""
    dr(x, y)

Compute dr

# Arguments
- H19年国交告594号第2三号ホ
- `x`: 最上端から最下端までの水平投影長さ(m)
- `y`: 屋根勾配(度)
```jldoctest
julia> round(dr(10, 2); digits=3)
0.05
```
"""
function dr(x, y)
# dr.jl
# 19:33 2021/01/05

  hx = 50 - 10
  hy = 15 -  2
  N1 = (50-x) / hx * (15 - y) / hy
  N2 = (x-10) / hx * (15 - y) / hy
  N3 = (x-10) / hx * (y  - 2) / hy
  N4 = (50-x) / hx * (y  - 2) / hy
  a1 = 0.05
  a2 = 0.14
  a3 = 0.03
  a4 = 0.01
  N = [N1 N2 N3 N4] # 有限要素法の形状関数を利用
  a = [a1, a2, a3, a4]
  (N * a)[1, 1]
end
# eof
