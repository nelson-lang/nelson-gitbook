#import "../nelson_help.typ": *

= num2bin <elementary_functions:5_base_conversions.num2bin>

Convertit un nombre en sa représentation binaire.

== Syntaxe

- #raw("R = num2bin(M)");

== Argument d'entrée

/ M: une variable : matrice pleine réelle logique, entière, single ou double.

== Argument de sortie

/ R: résultat de num2bin : tableau de caractères.

== Description

#strong[num2bin]; renvoie un tableau de caractères donnant la représentation binaire littérale d'un nombre.


== Fonction(s) utilisée(s)

C++ std::bitset

== Bibliographie

http:\/\/www.oxfordmathcenter.com\/drupal7\/node\/43

== Exemple

``````matlab
X = [65535 128; 1 0]
Y = num2bin(X)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.bin2num>)[bin2num];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
