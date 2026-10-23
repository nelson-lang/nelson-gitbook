#import "nelson_help.typ": *

= spreadsheetImportOptions <spreadsheet:spreadsheetImportOptions>

Creer des options pour importer des donnees de feuille de calcul.

== Syntaxe

- #raw("opts = spreadsheetImportOptions()");
- #raw("opts = spreadsheetImportOptions(Name, Value)");

== Argument d'entrée

/ Name, Value: arguments nom-valeur comme 'NumVariables', 'VariableNames', 'VariableTypes', 'Sheet' ou 'DataRange'.

== Argument de sortie

/ opts: Objet nelson.io.spreadsheet.SpreadsheetImportOptions.

== Description

#strong[spreadsheetImportOptions]; cree un objet d'options d'importation pour les fichiers de feuille de calcul (xlsx).

 L'objet utilise la classe Nelson #strong[nelson.io.spreadsheet.SpreadsheetImportOptions]; et est consomme par #strong[readtable]; avec l'option 'UseExcel' a false.

 Utilisez #strong[setvaropts]; pour configurer les options par variable comme le 'InputFormat' des dates.


== Exemple

``````matlab
opts = spreadsheetImportOptions('NumVariables', 3);
opts.VariableNames = ["name", "value", "date"];
opts.VariableTypes = ["string", "double", "datetime"]
``````


== Voir aussi

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:setvaropts>)[setvaropts];, #nlink(<spreadsheet:readtable>)[readtable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
