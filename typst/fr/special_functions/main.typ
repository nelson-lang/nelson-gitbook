#import "nelson_help.typ": *

= Fonctions spéciales

Le module Fonctions Spéciales fournit des outils pour effectuer des opérations mathématiques avancées dans Nelson.

 Il inclut des fonctions pour les distributions statistiques, les calculs combinatoires, et d'autres calculs mathématiques spécialisés qui sont essentiels dans diverses applications scientifiques et d'ingénierie.

 Ce module améliore les capacités de Nelson en offrant une gamme de fonctions qui supportent des analyses complexes et des tâches de modélisation.

== Functions

- #nlink(<special_functions:beta>)[beta]: Fonction bêta
- #nlink(<special_functions:betainc>)[betainc]: Fonction bêta incomplète
- #nlink(<special_functions:betaln>)[betaln]: Logarithme de la fonction bêta
- #nlink(<special_functions:cross>)[cross]: Produit vectoriel.
- #nlink(<special_functions:dot>)[dot]: Produit scalaire.
- #nlink(<special_functions:erf>)[erf]: Fonction d'erreur
- #nlink(<special_functions:erfc>)[erfc]: Fonction d'erreur complémentaire
- #nlink(<special_functions:erfcinv>)[erfcinv]: Fonction d'erreur complémentaire inverse
- #nlink(<special_functions:erfcx>)[erfcx]: Fonction d'erreur complémentaire mise à l'échelle
- #nlink(<special_functions:erfinv>)[erfinv]: Fonction d'erreur inverse
- #nlink(<special_functions:factor>)[factor]: Facteurs premiers
- #nlink(<special_functions:gamma>)[gamma]: Fonction spéciale gamma
- #nlink(<special_functions:gammainc>)[gammainc]: Fonction gamma incomplète
- #nlink(<special_functions:gammaln>)[gammaln]: Logarithme de la fonction gamma
- #nlink(<special_functions:gcd>)[gcd]: Plus grand commun diviseur
- #nlink(<special_functions:griddedInterpolant>)[griddedInterpolant]: Objet d'interpolation de donnees sur grille
- #nlink(<special_functions:integral>)[integral]: Évalue numériquement une intégrale (quadrature adaptative)
- #nlink(<special_functions:integral2>)[integral2]: Évalue numériquement une intégrale double
- #nlink(<special_functions:integral3>)[integral3]: Évalue numériquement une intégrale triple.
- #nlink(<special_functions:integralInterpolant>)[integralInterpolant]: Intégrale définie à borne supérieure variable (objet interpolant d'intégrale)
- #nlink(<special_functions:interp1>)[interp1]: Interpolation de donnees 1-D
- #nlink(<special_functions:interp2>)[interp2]: Interpolation de donnees grillees 2-D au format meshgrid
- #nlink(<special_functions:interp3>)[interp3]: Interpolation de donnees grillees 3-D au format meshgrid
- #nlink(<special_functions:interpn>)[interpn]: Interpolation de donnees grillees N-D au format ndgrid
- #nlink(<special_functions:isprime>)[isprime]: Détermine quels éléments d'un tableau sont premiers
- #nlink(<special_functions:lcm>)[lcm]: Plus petit commun multiple
- #nlink(<special_functions:makima>)[makima]: Interpolation cubique d'Akima modifiee.
- #nlink(<special_functions:pchip>)[pchip]: Interpolation polynomiale cubique de Hermite par morceaux (PCHIP).
- #nlink(<special_functions:peaks>)[peaks]: Fonction peaks
- #nlink(<special_functions:primes>)[primes]: Nombres premiers inférieurs ou égaux à la valeur d'entrée
- #nlink(<special_functions:quadgk>)[quadgk]: Evalue numeriquement une integrale par quadrature Gauss-Kronrod.
- #nlink(<special_functions:spline>)[spline]: Interpolation par spline cubique.


#nested[
#pagebreak(weak: true)
#include "beta.typ"
#pagebreak(weak: true)
#include "betainc.typ"
#pagebreak(weak: true)
#include "betaln.typ"
#pagebreak(weak: true)
#include "cross.typ"
#pagebreak(weak: true)
#include "dot.typ"
#pagebreak(weak: true)
#include "erf.typ"
#pagebreak(weak: true)
#include "erfc.typ"
#pagebreak(weak: true)
#include "erfcinv.typ"
#pagebreak(weak: true)
#include "erfcx.typ"
#pagebreak(weak: true)
#include "erfinv.typ"
#pagebreak(weak: true)
#include "factor.typ"
#pagebreak(weak: true)
#include "gamma.typ"
#pagebreak(weak: true)
#include "gammainc.typ"
#pagebreak(weak: true)
#include "gammaln.typ"
#pagebreak(weak: true)
#include "gcd.typ"
#pagebreak(weak: true)
#include "griddedInterpolant.typ"
#pagebreak(weak: true)
#include "integral.typ"
#pagebreak(weak: true)
#include "integral2.typ"
#pagebreak(weak: true)
#include "integral3.typ"
#pagebreak(weak: true)
#include "integralInterpolant.typ"
#pagebreak(weak: true)
#include "interp1.typ"
#pagebreak(weak: true)
#include "interp2.typ"
#pagebreak(weak: true)
#include "interp3.typ"
#pagebreak(weak: true)
#include "interpn.typ"
#pagebreak(weak: true)
#include "isprime.typ"
#pagebreak(weak: true)
#include "lcm.typ"
#pagebreak(weak: true)
#include "makima.typ"
#pagebreak(weak: true)
#include "pchip.typ"
#pagebreak(weak: true)
#include "peaks.typ"
#pagebreak(weak: true)
#include "primes.typ"
#pagebreak(weak: true)
#include "quadgk.typ"
#pagebreak(weak: true)
#include "spline.typ"
]
