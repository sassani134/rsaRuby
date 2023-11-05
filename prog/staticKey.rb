require 'byebug'
require 'pry'
require 'openssl'

def extended_gcd(a, b)

  # trivial case first: gcd(a, 0) == 1*a + 0*0
  return 1, 0 if b == 0

  # recurse: a = q*b + r
  q, r = a.divmod b
  s, t = extended_gcd(b, r)

  # compute and return coefficients:
  # gcd(a, b) == gcd(b, r) == s*b + t*r == s*b + t*(a - q*b)
  return t, s - q * t
end

################# Génération des clé#################
# ≡

# pp = OpenSSL::BN.generate_prime(10).to_i
pp = 5

# q = OpenSSL::BN.generate_prime(10).to_i
q = 17

# n = pp * q
n= 85
# phi = (pp - 1) * (q - 1)
phi = 64

e = 5
# e = OpenSSL::BN.generate_prime(10).to_i
# unless e.gcd(phi) == 1
#   e = OpenSSL::BN.generate_prime(10).to_i
#   e = 5
#   p phi
#   p e
# end

=begin
Remember that ed mod φ(n) = 1 and cgd(e, φ(n)) = 1.
cgd(e, φ(n)) = es + φ(n)t = 1 ⇔ 17s + 60t = 1.
  e.gcd(phi) = 1
  5.gcd(64) = 1
  5*13 + 64 * (-1) = 1
  donc
  5 * 13 ≡ 1 mod(64)
  e * d ≡ 1 mod(phi)

  l'inverse e modulo phi est d = 13
=end


# extended_gcd(e, phi)
# p extended_gcd(17, 60) # -7, 2
p extended_gcd(3, 20) # 13 -1
# 5*13 + 64 * (-1) = 1
# e*d + phi * extended_gcd(e, phi)[1] = 1

=begin
  https://youtu.be/xDhFgeZHXAI?t=510
  p = 3 et q = 11
  n = p * q = 33
  phi = 20
  e = 3
  extended_gcd(3,20) [7 - 1]

=end



=begin
https://youtu.be/Xlal_d4zyfo?t=232
https://youtu.be/Xlal_d4zyfo?t=320
p = 5 et q = 17
n = 85
phi 64
e = 5
d =13
 extended_gcd(e, phi) = [13, -1]
cgd(e, φ(n)) = es + φ(n)t = 1 ⇔ 17s + 60t = 1.
  e.gcd(phi) = 1
  5.gcd(64) = 1
  5*13 + 64 * (-1) = 1
  donc
  5 * 13 ≡ 1 mod(64)
  e * d ≡ 1 mod(phi)

  l'inverse e modulo phi est d = 13

=end
