require 'prime'


def createPrimeNumber()
  x = rand(100)
    while x.prime?
      x = rand(100)
    end
  return x
end

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

def unification(x,long)
  d = 0
  f = long
  l = Array.new

  while f <= k.length
    l.append(k[d..f])
    # d,f = f,f+long
    d = f
    f = f + long
  end
  return l
end

def cle()
  pp = createPrimeNumber()
  qq = createPrimeNumber()
  n = pp * qq
  phi = (pp - 1) * (qq - 1)

  r = 10
  d = 0

  while r !=1 or d <= 2 or d >= phi
    c = rand(100)

    r, d, v = extended_gcd(c, phi)
    p r , d , v
  end

end

def chiffre

end

def dechiffre
end

cle()
