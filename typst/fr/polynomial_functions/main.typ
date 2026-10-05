#import "nelson_help.typ": *

= Polynomials

Le module Polynomials fournit des outils pour créer, manipuler et analyser des polynômes dans Nelson.

 Il prend en charge l'évaluation, la différentiation, l'intégration, l'ajustement (fitting), la recherche de racines et les opérations sur polynômes matriciels.

 Ce module permet une gestion efficace des expressions polynomiales pour la modélisation mathématique, l'ajustement de courbes et l'analyse numérique.

== Functions

- #nlink(<polynomial_functions:compan>)[compan]: Matrice compagnon.
- #nlink(<polynomial_functions:deconv>)[deconv]: Déconvolution et division polynomiale.
- #nlink(<polynomial_functions:mkpp>)[mkpp]: Construit un polynome par morceaux
- #nlink(<polynomial_functions:poly>)[poly]: Polynôme à partir de racines ou polynôme caractéristique.
- #nlink(<polynomial_functions:polyder>)[polyder]: Dérivation polynomiale.
- #nlink(<polynomial_functions:polyfit>)[polyfit]: Ajustement polynomiale (polynomial curve fitting).
- #nlink(<polynomial_functions:polyint>)[polyint]: Intégration polynomiale.
- #nlink(<polynomial_functions:polyval>)[polyval]: Évaluation polynomiale.
- #nlink(<polynomial_functions:polyvalm>)[polyvalm]: Évaluation de polynôme matriciel.
- #nlink(<polynomial_functions:ppval>)[ppval]: Evalue une forme polynomiale par morceaux
- #nlink(<polynomial_functions:residue>)[residue]: Decomposition en fractions simples (residus)
- #nlink(<polynomial_functions:roots>)[roots]: Trouver les racines d'un polynôme.


#nested[
#pagebreak(weak: true)
#include "compan.typ"
#pagebreak(weak: true)
#include "deconv.typ"
#pagebreak(weak: true)
#include "mkpp.typ"
#pagebreak(weak: true)
#include "poly.typ"
#pagebreak(weak: true)
#include "polyder.typ"
#pagebreak(weak: true)
#include "polyfit.typ"
#pagebreak(weak: true)
#include "polyint.typ"
#pagebreak(weak: true)
#include "polyval.typ"
#pagebreak(weak: true)
#include "polyvalm.typ"
#pagebreak(weak: true)
#include "ppval.typ"
#pagebreak(weak: true)
#include "residue.typ"
#pagebreak(weak: true)
#include "roots.typ"
]
