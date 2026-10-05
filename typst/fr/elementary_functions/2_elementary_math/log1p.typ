#import "../nelson_help.typ": *

= log1p <elementary_functions:2_elementary_math.log1p>

log(1 + x) avec précision pour de petites valeurs de x.

== Syntaxe

- #raw("R = log1p(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: résultat de log(1 + x) calculé avec précision pour de petites valeurs de x.

== Description

#strong[log1p]; calcule log(1 + x) avec précision pour de petites valeurs de x.


== Exemple

``````matlab
x = [1+i,-i;i,2i];
r = log1p(x)
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
