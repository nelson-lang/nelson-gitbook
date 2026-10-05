#import "nelson_help.typ": *

= betaln <special_functions:betaln>

Logarithme de la fonction bêta

== Syntaxe

- #raw("L = betaln(Z, W)");

== Argument d'entrée

/ Z: scalaire, vecteur, ou matrice réel.
/ W: scalaire, vecteur, ou matrice réel.

== Argument de sortie

/ L: logarithme naturel de la fonction bêta.

== Description

#strong[betaln]; calcule le logarithme naturel de la fonction bêta, log(beta(Z,W)), sans les dépassements que peut provoquer un calcul direct pour de grands Z et W.


== Exemple

``````matlab
L = betaln(10, 20)
``````


== Voir aussi

#nlink(<special_functions:beta>)[beta];, #nlink(<special_functions:gammaln>)[gammaln];, #nlink(<special_functions:gamma>)[gamma];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
