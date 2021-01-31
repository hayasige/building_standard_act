# Quntest.jl
# Qun関数の定義があるファイルを読み込む
include("Qun.jl")
# アサーションによる関数の動作確認
@assert round(Int, Qun(0.3, 1.5, 1000)) ==   450
# eof
