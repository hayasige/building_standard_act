function Rs(rs)
using Statistics: mean
# function_rs.jl
# 2021-01-24
# 令82条の6二号イ
# Rs 各階の剛性率
# rs 各階の層間変形角の逆数
# rs_mean 当該建築物についてのrsの相加平均

  rs_mean=mean(rs)
  rs ./ rs_mean
end
# eof
