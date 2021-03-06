"""
    fb2(F)

Compute fb2

`fb2`: 曲げ材の座屈の許容応力度、炭素鋼、鋼管及び箱形断面の場合(1)に掲げる曲げ\n
材で弱軸周りに曲げを受ける場合並びにガセットプレートで面内に曲げを受ける場合\n
平成13年国土交通省告示第1024号第1三号ハ、 炭素鋼

# Arguments
`F`: 平成12年建設省告示第2464号第1に規定する基準強度(単位 N/m2)\n

# Example
```jlcodtest
julia> round(fb2(235))
157
```
"""
function fb2(F)
# fb2.jl
  F / 1.5
end
