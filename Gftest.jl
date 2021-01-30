# Gftest.jl

# Gf関数の定義があるファイルを読み込む
include("Gf.jl")

# アサーションによる関数の動作確認
@assert round(Gf(3, 10); digits = 3) == 2.5

# eof