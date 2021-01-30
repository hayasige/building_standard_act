# Fstest.jl

# Fs関数の定義があるファイルを読み込む
include("Fs.jl")

# アサーションによる関数の動作確認
@assert round(Fs(0.5); digits=3) == 1.167
@assert round(Fs(0.6); digits=3) == 1
@assert round(Fs(0.7); digits=3) == 1
# eof