# Qwtest.jl
# Qun関数の定義があるファイルを読み込む
include("Qw.jl")
# アサーションによる関数の動作確認
@assert round(Int,Qw(0.296, 180, 24, 1, 1, 6000, 3.96e-5, 295, 10, 5250)) ==
  2959246
# eof
