# Qctest.jl
# Qc関数の定義があるファイルを読み込む
include("Qc.jl")
# アサーションによる関数の動作確認
@assert round(Int, Qc(840761,0.4,300,875,24)) ==   851261
@assert round(Int, Qc(840761,10, 300,875,24)) ==  1092761
# eof
