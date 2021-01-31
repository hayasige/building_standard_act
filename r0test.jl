# r0test.jl
# r0関数の定義があるファイルを読み込む
include("r0.jl")
# アサーションによる関数の動作確認
@assert round(r0(1, 2, 3, 6); digits = 3) ==   0.333
# eof
