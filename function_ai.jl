# function_ai.jl
# 2021/01/02

function Ai(αi, T)
# 昭和55年建設省告示第1973号第3
# Ai 令第88条第1項
# αi 建築物のAiを算出しようとする高さの部分が支える部分の固定荷重と積載荷重と
#     の和（建築基準法施行令第86条第2項ただし書の規定により特定行政庁が指定する
#     多雪区域においては、更に積雪荷重を加えるものとする。以下同じ。)を当該建築
#     物の地上部分の固定荷重と積載荷重との和で除した数値
# T 同号第2に定めるT

  1 +(1 / sqrt(αi) - αi ) * 2T /(1 + 3T)
end
# eof