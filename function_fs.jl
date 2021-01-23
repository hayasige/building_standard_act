# function Fs(Rs)
# 昭和55年建設省告示第1972号第7表1
# Fs 
# Rs 剛性率

  if Rs => 0.6
    1
  elseif Rs < 0.6
    2 - Rs / 0.6
  end
end
# eof
