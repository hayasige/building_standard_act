# Retest.jl
# Re関数の定義があるファイルを読み込む
include("Re.jl")
# アサーションによる関数の動作確認
@assert Re(10, 100) ==  0.1
# eof
