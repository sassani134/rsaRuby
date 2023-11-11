require 'prime'
require 'byebug'
require 'pry'
require 'openssl'
require 'base64'

CHEMIN = "./cleRSA/"

def gcd_etendu(a, b)
  # cgd(e, φ(n)) = es + φ(n)t = 1
  # d = s + φ(n)
  # trivial case first: gcd(a, 0) == 1*a + 0*0
  return 1, 0 if b == 0

  # recurse: a = q*b + r
  q, r = a.divmod b
  s, t = gcd_etendu(b, r)

  # compute and return coefficients:
  # gcd(a, b) == gcd(b, r) == s*b + t*r == s*b + t*(a - q*b)
  return t, s - q * t
end

def fileExist(file)
  File.exist?(file)
end



pp = OpenSSL::BN.generate_prime(10,true).to_i
q = OpenSSL::BN.generate_prime(10,true).to_i

while q == pp
  q = OpenSSL::BN.generate_prime(10).to_i
end

n = pp * q
phi = (pp-1) * (q-1)

e = OpenSSL::BN.generate_prime(10,true).to_i


gcdeResult = gcd_etendu(e, phi)

d = gcdeResult[1]

@publicKey = [n.to_s,e.to_s]
@privateKey = d.to_s



def keyFiles(fileArgs = nil)
  if fileArgs == nil
    fileArgs = "monRSA"
  end

  fileName = CHEMIN+fileArgs

  if fileExist(fileName+".pub") or fileExist(fileName+".priv")
    File.open(fileName+".pub", "a") do |f|
      f.puts "---begin monRSA public key---"
      f.puts Base64.encode64(@publicKey[0] +"\r"+@publicKey[1])
      f.puts "---end monRSA public key---"
      f.close
    end
    File.open(fileName+".priv", "a") do |f|
      f.puts "---begin monRSA private key---"
      f.puts Base64.encode64(@publicKey[0] + "\r" +@privateKey)
      f.puts "---end monRSA private key---"
      f.close
    end
  else
    File.open(fileName+".pub", "w") do |f|
      f.puts "---begin monRSA public key---"
      f.puts Base64.encode64(@publicKey[0] +"\r"+ @publicKey[1])
      f.puts "---end monRSA public key---"
      f.close
    end
    File.open(fileName+".priv", "w") do |f|
      f.puts "---begin monRSA private key---"
      f.puts Base64.encode64(@publicKey[0] + "\r" + @privateKey)
      f.puts "---end monRSA private key---"
      f.close
    end
  end
end
