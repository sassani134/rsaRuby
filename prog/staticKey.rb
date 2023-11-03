require 'prime'

################# Génération des clé#################

#1000000000
def createPrimeNumber()
  x = rand(100)
    while x.prime?
      x = rand(100)
    end
  return x
end

=begin
pp = 11
q = 7
e = 17
n = pp*q #77
phi = 60

ed modulo phi = 1
e modulo phi = 1/d
1/d modulo phi = e
1/e modulo phi = d
17 d modulo 60 = 1
#totient tant de fois
// 60 =17 ??
#how many time 17 in 60
60 =3*17  #*3.5 ignorer le reste
60 = 3*17 + 9
17 = 9
17 = 1*9 #1.8
17 = 1*9 + 8

#A
1 =9 - 1*8
#B
1 = 9-1
#C

# d = 53

Remember that ed mod φ(n) = 1 and cgd(e, φ(n)) = 1.
=end


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

p extended_gcd(17, 60)
