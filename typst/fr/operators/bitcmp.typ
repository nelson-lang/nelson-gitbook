#import "nelson_help.typ": *

= bitcmp <operators:bitcmp>

Complément bit à bit.

== Syntaxe

- #raw("r = bitcmp(A)");
- #raw("r = bitcmp(A, assumedtype)");

== Argument d'entrée

/ A: un tableau d'entiers, ou un double de valeurs entières positives.
/ assumedtype: un nom de classe entière pour interpréter un #strong[A]; double.

== Argument de sortie

/ r: le complément bit à bit de #strong[A];.

== Description

#strong[r \= bitcmp(A)]; renvoie le complément bit à bit de #strong[A];, la largeur étant donnée par la classe entière de #strong[A];.

 Lorsque #strong[A]; est un double, fournissez #strong[assumedtype]; (par exemple #strong['uint8'];) pour fixer la largeur en bits ; le résultat reste double.


== Exemple

``````matlab
bitcmp(uint8(5))
``````


== Voir aussi

#nlink(<operators:bitand>)[bitand];, #nlink(<operators:bitor>)[bitor];, #nlink(<operators:bitxor>)[bitxor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
