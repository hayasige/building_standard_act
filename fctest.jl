# fctest.jl

# fc関数の定義があるファイルを読み込む
include("fc.jl")

# アサーションによる関数の動作確認
@assert round(fc(235, 100); digits=3) == 86.319
@assert round(fc(235, 200); digits=3) == 23.365

# eof