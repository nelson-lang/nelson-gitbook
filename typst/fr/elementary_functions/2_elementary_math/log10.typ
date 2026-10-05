#import "../nelson_help.typ": *

= log10 <elementary_functions:2_elementary_math.log10>

Logarithme décimal (base 10).

== Syntaxe

- #raw("R = log10(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: résultat de log : base 10.

== Description

#strong[log10]; calcule le logarithme décimal (base 10).

 Pour les valeurs réelles négatives et les valeurs complexes de M, la fonction#strong[log10]; renvoie des valeurs complexes.


== Exemple

``````matlab
x = [1+i,-i;i,2i];
r = log10(x)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.log>)[log];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
