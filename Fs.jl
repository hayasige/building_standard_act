"""
    Fs(Rs)

Compute Fs

`Fs`: 昭和55年建設省告示第1972号第7表1
# Arguments
`Rs`: 各階の剛性率(令82条の6第二号)
# Example
```jldoctest
julia> Fs(0.6)
1
```
"""
function Fs(Rs)
# Fs.jl
  0.6 <= Rs  && return 1
  Rs  < 0.6  && return 2 - Rs / 0.6
end
# eof
