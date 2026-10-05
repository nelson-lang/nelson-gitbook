#import "../nelson_help.typ": *

= linspace <elementary_functions:1_array_creation_shape.linspace>

constructeur de vecteur à espacement linéaire.

== Syntaxe

- #raw("V = linspace(s, e)");
- #raw("V = linspace(s, e, n)");

== Argument d'entrée

/ s: première valeur : un scalaire, single ou double.
/ e: dernière valeur : un scalaire, single ou double.
/ n: nombre de points : un scalaire, single ou double (100 par défaut).

== Argument de sortie

/ V: résultat de linspace : un vecteur à espacement linéaire.

== Description

#strong[linspace]; génère un vecteur à espacement linéaire.


== Exemple

``````matlab
V = linspace(1+2i, 10+10i, 4)
``````


== Voir aussi

#nlink(<elementary_functions:1_array_creation_shape.logspace>)[logspace];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
