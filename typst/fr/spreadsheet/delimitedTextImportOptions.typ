#import "nelson_help.typ": *

= delimitedTextImportOptions <spreadsheet:delimitedTextImportOptions>

Creer des options pour importer des donnees texte delimitees.

== Syntaxe

- #raw("opts = delimitedTextImportOptions()");
- #raw("opts = delimitedTextImportOptions(Name, Value)");

== Argument d'entrée

/ Name, Value: arguments nom-valeur comme 'NumVariables', 'VariableNames', 'VariableTypes', 'Delimiter' ou 'DataLines'.

== Argument de sortie

/ opts: Objet nelson.io.text.DelimitedTextImportOptions.

== Description

#strong[delimitedTextImportOptions]; cree un objet d'options d'importation pour les fichiers texte delimites.


== Exemple

``````matlab
opts = delimitedTextImportOptions('NumVariables', 3) opts.Delimiter = {';'} opts.DataLines = [2 Inf]
``````


== Voir aussi

#nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:readmatrix>)[readmatrix];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
