# Ttest.jl
# T関数の定義があるファイルを読み込む
include("T.jl")
# アサーションによる関数の動作確認
@assert T(10, 0.5) == 0.25
# eof
