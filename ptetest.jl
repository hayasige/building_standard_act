# ptetest.jl
# pte関数の定義があるファイルを読み込む
include("pte.jl")
# アサーションによる関数の動作確認
@assert round(pte(2880, 180, 5400); digits=3) == 0.296
# eof
