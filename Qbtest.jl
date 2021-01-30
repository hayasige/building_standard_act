# Qbtest.jl

# Qb関数の定義があるファイルを読み込む
include("Qb.jl")

# アサーションによる関数の動作確認
@assert round(Int, Qb(1,24,1,1,1000,0.002,295,300)) ==  840761
# eof