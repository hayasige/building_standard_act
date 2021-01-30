# Cpetest.jl

# Cpe関数の定義があるファイルを読み込む
include("Cpe.jl")

# アサーションによる関数の動作確認
@assert round(Cpe(20, 15, 0.2); digits=3) == 0.891

# eof