# ktest.jl

# k関数の定義があるファイルを読み込む
include("k.jl")

# アサーションによる関数の動作確認
@assert round(k(10, 1); digits = 3) == 0.075
@assert round(k(20, 1); digits = 3) == 0.05
@assert round(k(30, 1); digits = 3) == 0.05
# eof