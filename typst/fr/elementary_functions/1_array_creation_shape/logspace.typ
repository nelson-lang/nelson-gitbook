#import "../nelson_help.typ": *

= logspace <elementary_functions:1_array_creation_shape.logspace>

constructeur de vecteur à espacement logarithmique.

== Syntaxe

- #raw("V = logspace(s, e)");
- #raw("V = logspace(s, e, n)");

== Argument d'entrée

/ s: première valeur : un scalaire, single ou double.
/ e: dernière valeur : un scalaire, single ou double.
/ n: nombre de points : un scalaire, single ou double (100 par défaut).

== Argument de sortie

/ V: résultat de logspace : un vecteur à espacement logarithmique.

== Description

#strong[logspace]; génère un vecteur à espacement logarithmique.


== Exemple

``````matlab
V = logspace(1+2i, 10+10i, 4)
``````


== Voir aussi

#nlink(<elementary_functions:1_array_creation_shape.linspace>)[linspace];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
