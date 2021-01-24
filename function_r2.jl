function r2(r0, l0, l, h0, h)

# function_r2.jl
# 平成19年国土交通省告示第594号第1三号(3)
# r2 当該開口部を有する耐力壁のせん断耐力の低減率
# r0, l0, l, h0, h それぞれ同号(1)に規定するr0, l0, l, h0, hを表すものとする。

  1 - max(r0, l0/l, h0/h)
end
# eof
