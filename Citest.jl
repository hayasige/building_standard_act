# Citest.jl

# Ci関数の定義があるファイルを読み込む
include("Ci.jl")

# アサーションによる関数の動作確認
@assert round(Ci(1.0, 0.9, 1.2, 0.2); digits=3) == 0.216

# eof