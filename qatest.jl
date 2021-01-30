# qatest.jl

# qatest関数の定義があるファイルを読み込む
include("qa.jl")

# アサーションによる関数の動作確認
@assert round(qa(1,2,3,4,5,6,7,8,9,10,16,16,1);  digits = 3) ==  3584.0
# eof