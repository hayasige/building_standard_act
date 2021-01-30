# Fetest.jl

# Fe関数の定義があるファイルを読み込む
include("Fe.jl")

# アサーションによる関数の動作確認
@assert round(Fe(0.10); digits=3) == 1.0
@assert round(Fe(0.15); digits=3) == 1.0
@assert round(Fe(0.20); digits=3) == 1.167
@assert round(Fe(0.30); digits=3) == 1.5
@assert round(Fe(0.40); digits=3) == 1.5

# eof