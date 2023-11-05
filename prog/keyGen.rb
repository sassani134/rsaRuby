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
