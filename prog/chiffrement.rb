messageClaire ="a"
messageAscii = Array.new
puts messageClaire

publicKey = [33, 3]
privateKey = [33, 7]

# Chiffrement



for i in 0..messageClaire.length-1
  messageAscii << messageClaire[i].ord
end

p messageAscii

p messageClaire
p messageClaire.bytes

messageCache = 97.pow(33) / 3

p "ayo"
p messageCache

theMessage = messageCache.pow(7) % 3

p "message :" + theMessage.to_s
