#import "nelson_help.typ": *

= gamma <special_functions:gamma>

Fonction spéciale gamma

== Syntaxe

- #raw("R = gamma(M)");

== Argument d'entrée

/ M: une matrice réelle simple ou double.

== Argument de sortie

/ R: résultat de la fonction gamma.

== Description

#strong[gamma]; calcule la fonction gamma.

 La fonction gamma est définie par l'intégrale :

 #latex("\\Gamma(z) = \\int_0^{\\infty} t^{z-1} e^{-t} \\, dt"); pour

 #latex("\\text{Re}(z) > 0"); La fonction gamma étend la fonction factorielle aux nombres réels et complexes :

 #latex("\\Gamma(n) = (n-1)!"); pour les entiers positifs

 #latex("n"); Propriétés importantes :

 

- #latex("\\Gamma(z+1) = z\\Gamma(z)"); (relation de récurrence)
- #latex("\\Gamma(1/2) = \\sqrt{\\pi}");
== Exemple

``````matlab
R = gamma([-pi:0.1:pi])
``````


== Voir aussi

#nlink(<special_functions:gammaln>)[gammaln];, #nlink(<elementary_functions:2_elementary_math.factorial>)[factorial];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
