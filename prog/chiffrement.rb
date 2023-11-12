require 'base64'

CHEMIN_CT = "./cText/"

messageClaire ="abcd" # a renseigner
@messageAscii = messageClaire.bytes
# @asciiUni = Array.new
@messageChiffre = nil

ayo = 97
m = 010

# n et e sont les clés publiques
@publicKey = [85, 5] # a renseigner
# d
@privateKey = 13 # a renseigner

# p "messageAscii : #{@messageAscii}"
# @messageAscii.each do |n|
#   @asciiUni << format('%03d', n)
# end

# p "asciiUni : #{@asciiUni}"
# p "asciiUni : #{@asciiUni[0]}"
# p @asciiUni[0]
# p @asciiUni[0].class
# p @asciiUni[0].to_i

# x ≡ messageAscii^e mod n
# (n.pow(publicKey[1])) % publicKey[0]

def chiffrement(publicKey = @publicKey)
  completedMessage = Array.new
  @messageAscii.each do |n|
    @messageChiffre = (n.pow(publicKey[1])) % publicKey[0]
    @messageChiffre = format('%03d', @messageChiffre)
    @messageChiffre = Base64.encode64(@messageChiffre)
    @messageChiffre = @messageChiffre.delete("\n")
    completedMessage << @messageChiffre
  end
  # p "completedMessage : #{completedMessage}"
  return completedMessage
end

def chiffrementDansTxt
  file = File.open("messageChiffre", "w")
end

chiffrement
