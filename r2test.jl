# r2test.jl
# r2関数の定義があるファイルを読み込む
include("r2.jl")
# アサーションによる関数の動作確認
@assert round(r2(0.333, 2, 6, 1, 3); digits = 3) ==  0.667
# eof
