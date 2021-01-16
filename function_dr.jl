# function_dr.jl
# 19:33 2021/01/05

function dr(x, y)# H19年国交告594号第2三号ホ
  # x 最上端から最下端までの水平投影長さ(m)
  # y 屋根勾配(度)
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
  N = [N1 N2 N3 N4]
  a = [a1, a2, a3, a4]
  (N * a)[1, 1]
end

println("x\ty\tdr")
for (x, y) in [(10, 2), (10, 15), (50, 2), (50, 15)]
  println("$x\t$y\t$(dr(x,y))")
end
