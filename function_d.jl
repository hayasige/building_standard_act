# function_d.jl
function d(α, β, γ, ls, rs)
# 平成12年建設省告示第1455号第2
# d  垂直積雪量(単位 m)
# α、β、γ 区域に応じて別表の当該各欄に掲げる数値
# ls 区域の標準的な標高(単位 m)
# rs 区域の標準的な海率(区域に応じて別表のRの欄に掲げる半径(単位 km)の円の面積
#    に対する当該円内の海その他これに類するものの面積の割合をいう。)

  α * ls + β * rs +γ
end
