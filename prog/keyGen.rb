require 'prime'
require 'byebug'
require 'pry'
require 'openssl'

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

pp = OpenSSL::BN.generate_prime(10).to_i
# pp = OpenSSL::BN.generate_prime(10,true).to_i
q = OpenSSL::BN.generate_prime(10).to_i
# q = OpenSSL::BN.generate_prime(10,true).to_i

while q == pp
  q = OpenSSL::BN.generate_prime(10).to_i
end

n = pp * q
p pp
p q
phi = (pp-1) * (q-1)
p phi

e = OpenSSL::BN.generate_prime(10).to_i


gcdeResult = gcd_etendu(e, phi)

d = gcdeResult[1]

publicKey = [n,e]
privateKey = d

p publicKey
p privateKey
=begin
################# Génération des clé#################
publicKey = nil
privateKey = nil
#1000000000

def createPrimeNumber()
  x = rand(100)
    while x.prime?
      x = rand(100)
    end
  return x
end

def pgcde(a, b)

  # trivial case first: gcd(a, 0) == 1*a + 0*0
  return 1, 0 if b == 0

  # recurse: a = q*b + r
  q, r = a.divmod b
  s, t = pgcde(b, r)

  # compute and return coefficients:
  # gcd(a, b) == gcd(b, r) == s*b + t*r == s*b + t*(a - q*b)
  return t, s - q * t
end


# Générer 2 nombres 1er différents de 10 chiffres de long : pp & q
pp =  createPrimeNumber()
q = createPrimeNumber()

while q == pp
  q = createPrimeNumber()
end

# Calculer n et n’(phi) (facile)
n = pp * q
phi = (pp - 1) * (q - 1) # n'

# Faire une boucle qui teste des valeurs pour e et d jusqu’à ce que e et d jusqu’à ce que :
  # e soit premier
  # e et d sont différents
  # ed%phi = 1

  #e.gcd(phi) != 1


# Calculer d (plus compliqué)
# e peut etre n'importe quel nombre premier
# selon https://youtu.be/gBHNuFq5PpI et le tp et le cours
# d doit etre un nombre premier différent de e
while true
  e = createPrimeNumber()
  until e.gcd(phi) == 1
    e = createPrimeNumber()
  end

  # Calculer d inverse de e modulo phi
  # d*e = 1 (mod phi)
  # d =(1/e) (mod phi)


  #ed mod φ(n) = 1 and cgd(e, φ(n)) = 1

  d = e.modular_inverse(phi)
  # while e * d % phi != 1 and e.gcd(phi) != 1
  #   d += 1
  #   ed = e*d
  #   p d
  # end


end

p "pp: " + pp.to_s
p "q: " + q.to_s
p "e: " + e.to_s
p "d: " + d.to_s
p "ed: " + ed.to_s
publicKey = [e, n]
privateKey = [d, n]
p "publicKey: " + publicKey.to_s
p "privateKey: " + privateKey.to_s
=end
