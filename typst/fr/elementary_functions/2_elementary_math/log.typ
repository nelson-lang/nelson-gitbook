#import "../nelson_help.typ": *

= log <elementary_functions:2_elementary_math.log>

Logarithme naturel.

== Syntaxe

- #raw("R = log(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: résultat de log : logarithme naturel.

== Description

#strong[log]; calcule le logarithme naturel.

 Pour les nombres réels positifs :

 #latex("\\ln(x)"); Pour les nombres complexes #strong[z]; :

 #latex("\\ln(z) = \\ln|z| + i\\arg(z)"); où

 #latex("|z|"); est le module et

 #latex("\\arg(z)"); est l'argument de #strong[z];.


== Exemple

``````matlab
x = [1+i,-i;i,2i];
r = log(x)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.exp>)[exp];, #nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<elementary_functions:3_complex_numbers.angle>)[angle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
