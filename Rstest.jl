# Rstest.jl
# Rs関数の定義があるファイルを読み込む
include("Rs.jl")
# アサーションによる関数の動作確認
@assert round.(Rs([200, 300, 400, 500]); digits=3) ==  
  [0.571, 0.857, 1.143, 1.429]
# eof
