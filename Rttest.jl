# Rttest.jl
# Rt関数の定義があるファイルを読み込む
include("Rt.jl")
# アサーションによる関数の動作確認
@assert Rt(10, 0.5, 2) ==  1
# eof
