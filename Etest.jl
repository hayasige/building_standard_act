# Etest.jl

# E関数の定義があるファイルを読み込む
include("E.jl")

# アサーションによる関数の動作確認
@assert round(E(2, 3); digits=3) == 12

# eof