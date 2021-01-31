# alphatest.jl
# alpha関数の定義があるファイルを読み込む
include("alpha.jl")
# アサーションによる関数の動作確認
@assert round(alpha(0.14, 1, 0.3); digits=3) == 1.383
# eof
