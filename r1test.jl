# r1test.jl
# r1関数の定義があるファイルを読み込む
include("r1.jl")
# アサーションによる関数の動作確認
@assert round(r1(0.333); digits = 3) ==  0.584
# eof
