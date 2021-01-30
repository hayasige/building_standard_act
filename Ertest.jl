# Ertest.jl

# Er関数の定義があるファイルを読み込む
include("Er.jl")

# アサーションによる関数の動作確認
@assert round(Er(1, 5); digits=3) == 1.15

# eof