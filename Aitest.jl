# Aitest.jl

# Ai関数の定義があるファイルを読み込む
include("Ai.jl")

# アサーションによる関数の動作確認
@assert round(Ai(0.5, 1.0); digits=3) == 1.457
@assert  (@. round(Ai([0.25,0.50,0.75,1.0], 1.0); digits=3)) == [1.875, 1.457, 1.202, 1.0]

# eof