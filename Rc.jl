module Rc

"""
    fc(F)
Compute fc  圧縮の長期に生ずる力に対する許容応力度(N/mm2)
# Arguments
`F`: 設計基準強度(N/mm2)
"""
fc(F) = F / 3 # 令91条

"""
    ft(F)
Compute ft 圧縮の長期に生ずる力に対する引張りの許容応力度(N/mm2)
# Arguments
`F`: 設計基準強度(N/mm2)
"""
function ft(F)
  if F > 21
    return 0.49 + F / 100 # H12告示1450号第2
  else
    return F / 30 # 令91条
  end
end

"""
    fs(F)
Compute fs コンクリートの長期に生ずる力に対するせん断の許容応力度
# Arguments
`F`: 設計基準強度(N/mm2)
"""
function fs(F) # せん断の長期に生ずる力に対する許容応力度(N/mm2)
  if F > 21
    return 0.49 + F / 100 # H12告示1450号第2
  else
    return F / 30 # 令91条
  end
end

"""
    fa(F, 鉄筋の使用位置)
Compute fa 異形鉄筋として異形棒鋼を用いる場合の
           コンクリートの付着に対する長期に生ずる力に対する許容応力度
# Arguments
`F`: 設計基準強度(N/mm2)
"""
function fa(F, 鉄筋の使用位置) # 令91条、H12告示1450号第1、異形鉄筋
  if 鉄筋の位置 == "はりの上端"
    F <= 22.5 && return 1/15 * F
    F >  22.5 && return 0.9 + 2/75 * F
  elseif
    F <= 22.5 && return 1/10 * F
    F >  22.5 && return 1.35 + 1/25 * F
end

end