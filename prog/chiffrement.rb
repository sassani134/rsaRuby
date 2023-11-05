messageClaire ="abcd" # a renseigner
messageAscii = messageClaire.bytes
asciiUni = Array.new
messageChiffre = nil

ayo = 97
m = 010

# n d
publicKey = [85, 5] # a renseigner
privateKey = 13 # a renseigner


messageAscii.each do |n|
 asciiUni << format('%03d', n)
end


# x ≡ messageAscii^e mod n



def chiffrement(messageAscii, publicKey)
  messageAscii.each do |n|
    messageChiffre = (n.pow(publicKey[1])) % publicKey[0]
    p messageChiffre
  end
end

def chiffrementDansTxt
  file= File.open("messageChiffre", "w")
end
chiffrement(messageAscii, publicKey)
