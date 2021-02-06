"""
    Ai(αi, T)
    
Compute Ai

# Arguments
`Ai`: 建築物の振動特性に応じて地震層せん断力係数の建築物の高さ方向の分布を表すものとして国土交通大臣が定める方法により算出した値(令第88条第1項)

`αi`: 建築物のAiを算出しようとする高さの部分が支える部分の固定荷重と積載荷重との和（建築基準法施行令第86条第2項ただし書の規定により特定行政庁が指定する多雪区域においては、更に積雪荷重を加えるものとする。以下同じ。)を当該建築物の地上部分の固定荷重と積載荷重との和で除した数値(昭和55年建設省告示第1973号第3)

`T`:  設計用一次固有周期(単位 秒)(昭和55年建設省告示第1973号第2)
# Example
```jldoctest
julia> round(Ai(0.5, 1.0); digits=3)
1.457
```
"""
function Ai(αi, T)
# Ai.jl
# 2021/01/02

  1 .+ (1 ./ sqrt.(αi) .- αi ) * 2T /(1 + 3T)
end
# eof
