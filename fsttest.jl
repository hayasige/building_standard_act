# fsttest.jl

# fst関数の定義があるファイルを読み込む
include("fst.jl")

# アサーションによる関数の動作確認
@assert round(fst(150, 250, 500); digits=3) == 75

# eof