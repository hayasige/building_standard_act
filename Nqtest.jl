# Nqtest.jl

# Nq関数の定義があるファイルを読み込む
include("Nq.jl")

# アサーションによる関数の動作確認
@assert round(Nq(0);  digits = 3) ==  1.0
@assert round(Nq(5);  digits = 3) ==  1.6
@assert round(Nq(10); digits = 3) ==  2.5
@assert round(Nq(15); digits = 3) ==  3.9
@assert round(Nq(20); digits = 3) ==  6.4
@assert round(Nq(25); digits = 3) == 10.7
@assert round(Nq(28); digits = 3) == 14.7
@assert round(Nq(32); digits = 3) == 23.2
@assert round(Nq(36); digits = 3) == 37.8
@assert round(Nq(40); digits = 3) == 64.2

# eof