#import "../nelson_help.typ": *

= sqrt <elementary_functions:2_elementary_math.sqrt>

Square root.

== Syntaxe

- #raw("R = sqrt(M)");

== Argument d'entrée

/ M: a variable

== Argument de sortie

/ R: result of sqrt: square root.

== Description

#strong[sqrt]; calcule la racine carrée.

 Pour les nombres réels positifs :

 #latex("\\sqrt{x}"); Pour les nombres complexes #strong[z \= x + iy]; :

 #latex("\\sqrt{z} = \\sqrt{r} e^{i\\phi/2}"); où

 #latex("r = |z| = \\sqrt{x^2 + y^2}"); et

 #latex("\\phi = \\arg(z) = \\text{atan2}(y, x)");
== Exemple

``````matlab
x = -3:3;
r = sqrt(x)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<elementary_functions:3_complex_numbers.angle>)[angle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
