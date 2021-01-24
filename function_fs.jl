function Fs(Rs)

# 昭和55年建設省告示第1972号第7表1
# Fs 
# Rs 剛性率

  Rs => 0.6  && return 1
  Rs  < 0.6  && return 2 - Rs / 0.6
end
# eof
