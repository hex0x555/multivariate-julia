using Nemo

using Singular

a = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
#define coefficients for H polynomial

b = [1, 1, 1, 1, 1, 1]
#define coefficients for G polynomial

Nemo.finite_field

p = 23

Fp = finite_field(p)

Nemo.polynomial_ring

using Polynomials

S, (x, y, z) = Singular.polynomial_ring(GF(23), [:x, :y, :z])
#construct trivariate polynomial ring in x, y, z over finite field (mod 23)

h = a[1] + a[2]*x + a[3]*y + a[4]*x^2 + a[5]*y^2 + a[6]*x*y + a[7]*x^3 + a[8]*x^2*y + a[9]*x*y^2 + a[10]*y^3
#define H as third-order polynomial in x and y with coefficients given by a

g = b[1] + b[2]*x + b[3]*(h-z) + b[4]*x^2 + b[5]*(h-z)^2 + b[6]*x*(h-z)
#define G as second order polynomial in x and [H(x, y)-z] with coefficients given by b

P = 1
#initial value for P_i+1 = 1
#must find value of z such that g - P = 0

#using Roots

#find_zero(g - P, 0, 23)

#I = ideal(S, [h, g])
#G = groebner_basis(I)

#Nemo.roots

#rand(S::MPolyRing, exp_range::AbstractUnitRange{Int}, term_range::AbstractUnitRange{Int}, v...)








