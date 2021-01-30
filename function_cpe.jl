"""
    Cpe(H, Z, α)

Compute Cpe
```
平成12年建設省告示第1458号第3項表8
Cpe 帳壁の正のピーク外圧係数
H   建築物の高さと軒の高さとの平均(単位 m)
Z   帳壁の部分の地盤面からの高さ(単位 m)
α  平成12年建設省告示第1454号第1第3項に規定する数値
   (地表面粗度区分がⅣの場合にあっては、地表面粗度区分がⅢの場合における数値
    を用いるものとする。)
```
# Example
```julia-repl
julia> Cpe(20, 15, 0.2)
0.8913012289830017
```
"""
function Cpe(H, Z, α)
# function_cpe.jl

  if H <= 5
    1
  else
    if Z <= 5
      (5 / H)^2α
    else
      (Z / H)^2α
    end
  end
end
# eof