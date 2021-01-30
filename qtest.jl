# qtest.jl

# q関数の定義があるファイルを読み込む
include("q.jl")

# アサーションによる関数の動作確認
@assert round(q(1.85, 30);  digits = 3) == 999.0
# eof