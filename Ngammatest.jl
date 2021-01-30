# Ngammatest.jl

# Ngamma関数の定義があるファイルを読み込む
include("Ngamma.jl")

# アサーションによる関数の動作確認
@assert round(Ngamma(0);  digits = 3) ==  0
@assert round(Ngamma(5);  digits = 3) ==  0.1
@assert round(Ngamma(10); digits = 3) ==  0.4
@assert round(Ngamma(15); digits = 3) ==  1.1
@assert round(Ngamma(20); digits = 3) ==  2.9
@assert round(Ngamma(25); digits = 3) ==  6.8
@assert round(Ngamma(28); digits = 3) == 11.2
@assert round(Ngamma(32); digits = 3) == 22.0
@assert round(Ngamma(36); digits = 3) == 44.4
@assert round(Ngamma(40); digits = 3) == 93.7

# eof