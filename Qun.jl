"""
    Qun(Ds, Fes, Qud)

Compute Qun

`Qun`: 各階の必要保有水平耐力(単位 N) in 令82条の3二号
# Aurguments
`Ds`:  各階の構造特性を表すものとして、建築物の構造耐力上主要な部分の構造方法に応じた減衰性及び各階の靭性を考慮して国土交通大臣が定める数値

`Fes`: 各階の形状特性を表すものとして、各階の剛性率及び偏心率に応じて国土交通大臣が定める方法により算出した数値

`Qud`: 地震力によって各階に生ずる水平力
# Example
```jldoctest
julia> round(Int, Qun(0.3, 1.5, 1000))
450
```
"""
function Qun(Ds, Fes, Qud)
# function_qun.jl
# 2021-01-24

  Ds .* Fes .* Qud
end
# eof
