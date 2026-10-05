#import "nelson_help.typ": *

= eps <constructors_functions:eps>

Crée un epsilon (précision machine)

== Syntaxe

- #raw("eps");
- #raw("eps");
- #raw("eps(n)");
- #raw("eps(n, m)");
- #raw("eps('double')");
- #raw("eps('single')");

== Argument d'entrée

/ n: une variable : matrice n-par-n
/ m: une variable : matrice n-par-m

== Description

#strong[eps]; retourne la précision machine 2^(-52) pour double et 2^(-23) pour single.

 eps(Inf), eps(-Inf) et eps(NaN) retournent NaN.


== Exemples

``````matlab
eps
``````

``````matlab
eps('double')
``````

``````matlab
eps('single')
``````


== Voir aussi

#nlink(<double:double>)[double];, #nlink(<single:single>)[single];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
