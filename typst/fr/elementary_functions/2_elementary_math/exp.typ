#import "../nelson_help.typ": *

= exp <elementary_functions:2_elementary_math.exp>

Exponentielle

== Syntaxe

- #raw("R = exp(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: résultat de exp : exponentielle.

== Description

#strong[exp]; calcule la fonction exponentielle.

 Pour les nombres réels :

 #latex("e^x"); Pour les nombres complexes #strong[z \= x + iy]; :

 #latex("e^z = e^x(\\cos y + i\\sin y)");
== Exemple

``````matlab
x = [1+i,-i;i,2i];
r = exp(x)
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.conj>)[conj];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
