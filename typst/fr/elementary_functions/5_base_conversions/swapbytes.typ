#import "../nelson_help.typ": *

= swapbytes <elementary_functions:5_base_conversions.swapbytes>

Inverse l'ordre des octets.

== Syntaxe

- #raw("R = swapbytes(M)");

== Argument d'entrée

/ M: une variable : matrice pleine réelle entière, single ou double.

== Argument de sortie

/ R: résultat de swapbytes : ordre des octets de M inversé.

== Description

#strong[swapbytes]; inverse l'ordre des octets.

 convertisseur d'endianness (petit-boutiste \/ gros-boutiste)


== Exemple

``````matlab
X = uint16([65535 128; 1 0])
Y = swapbytes(X)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.num2bin>)[num2bin];, #nlink(<elementary_functions:5_base_conversions.bin2num>)[bin2num];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
