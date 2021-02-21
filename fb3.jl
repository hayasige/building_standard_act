"""
    fb3(F, lb, h, Af)

Compute fb3

`fb3`: みぞ形断面材及び荷重面内に対称軸を有しない材の場合\n
平成13年国土交通省告示第1024号第1三号ハ(3)、 炭素鋼
# Arguments
`F`: 平成12年建設省告示第2464号第1に規定する基準強度(単位 N/m2)\n
`lb`: 圧縮フランジの支点間距離(単位 mm)\n
`h`: 曲げ材のせい(単位 mm)\n
`Af`: 圧縮フランジの断面積(単位 mm2)\n
# Example
```jlcodtest
julia> round(fb3(235, , , ))

```
"""
function fb3(F, lb, h, Af)
# fb3.jl
  f1 = 89000 / (lb * h / Af)
  f2 = F / 1.5
  if f1 > f2
    return f2
  else
    return f1
  end
end
