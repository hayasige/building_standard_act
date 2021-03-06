"""
    fb1(F, lb, i, C, h, Af)

Compute fb1

`fb1`: 曲げ材の座屈の許容応力度、炭素鋼、荷重面内に対称軸を有する圧延形鋼及びプレートガーダーその他これに類する組立材で、
強軸周りに曲げを受ける場合\n
平成13年国土交通省告示第1024号第1三号ハ、 炭素鋼

# Arguments
`F`: 平成12年建設省告示第2464号第1に規定する基準強度(単位 N/m2)\n
`lb`: 圧縮フランジの支点間距離(単位 mm)
`i`: 圧縮フランジと曲げ材のせいの1/6とからなるT形断面のウェッブ軸周りの断面二次半径(単位 mm)
`C`: 1.75+1.05(M2/m1)+0.3(M2/M1)^2
`Λ`: ロの表1に規定する限界細長比   
`h`: 曲げ材のせい(単位 mm)\n
`Af`: 圧縮フランジの断面積(単位 mm2)\n

# Example
```jlcodtest
julia> round(fb1(235, 1,2,3,4,5,6))

```
"""
function fb1(F, lb, i, C, Λ, h, Af)
# fb1.jl
  Λ = 1500 / sqrt(F / 1.5) # 限界細長比
  f1 = F(2/3 - 4/15 * (lb/i)^2 / C / Λ^2)
  f2 = 89000 / (lb * h / Af)
  if f1 > f2
    return f1
  else
    return f2
  end
end
