#import "../nelson_help.typ": *

= num2hex <elementary_functions:5_base_conversions.num2hex>

Convertit un nombre en sa représentation hexadécimale IEEE.

== Syntaxe

- #raw("s = num2hex(X)");

== Argument d'entrée

/ X: un tableau numérique single ou double.

== Argument de sortie

/ s: une chaîne des chiffres hexadécimaux (16 pour double, 8 pour single).

== Description

#strong[num2hex]; Convertit un nombre en sa représentation hexadécimale IEEE.


== Exemple

``````matlab
s = num2hex(1)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.hex2num>)[hex2num];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
