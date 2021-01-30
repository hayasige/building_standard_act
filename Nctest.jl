# Nctest.jl

# Nc関数の定義があるファイルを読み込む
include("Nc.jl")

# アサーションによる関数の動作確認
@assert round(Nc(0);  digits = 3) ==  5.1
@assert round(Nc(5);  digits = 3) ==  6.5
@assert round(Nc(10); digits = 3) ==  8.3
@assert round(Nc(15); digits = 3) == 11.0
@assert round(Nc(20); digits = 3) == 14.8
@assert round(Nc(25); digits = 3) == 20.7
@assert round(Nc(28); digits = 3) == 25.8
@assert round(Nc(32); digits = 3) == 35.5
@assert round(Nc(36); digits = 3) == 50.6
# eof