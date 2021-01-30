# drtest.jl

# dr関数の定義があるファイルを読み込む
include("dr.jl")

# アサーションによる関数の動作確認
@assert round(dr(10,  2); digits = 3) == 0.05
@assert round(dr(10, 15); digits = 3) == 0.01
@assert round(dr(50,  2); digits = 3) == 0.14
@assert round(dr(50, 15); digits = 3) == 0.03

# eof