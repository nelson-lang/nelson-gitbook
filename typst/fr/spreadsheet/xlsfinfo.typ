#import "nelson_help.typ": *

= xlsfinfo <spreadsheet:xlsfinfo>

Retourner les informations d'un fichier tableur Open XML.

== Syntaxe

- #raw("status = xlsfinfo(filename)");
- #raw("[status, sheets, format] = xlsfinfo(filename)");

== Argument d'entrée

/ filename: une chaine : nom de fichier .xlsx.

== Argument de sortie

/ status: chaine de statut du format, ou chaine vide si le fichier ne peut pas etre lu.
/ sheets: cellule contenant les noms de feuilles.
/ format: chaine de format.

== Description

#strong[xlsfinfo]; retourne les metadonnees des fichiers .xlsx pris en charge par le backend Open XML.


== Exemple

Lister les feuilles d'un classeur.

``````matlab
filename = [tempdir(), 'xlsfinfo_example.xlsx']; xlswrite(filename, [1 2], 'Run1', 'A1'); [status, sheets, format] = xlsfinfo(filename)
``````


== Voir aussi

#nlink(<spreadsheet:xlsread>)[xlsread];, #nlink(<spreadsheet:xlswrite>)[xlswrite];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
