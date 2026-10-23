#import "nelson_help.typ": *

= setvaropts <spreadsheet:setvaropts>

Definir les options d'importation des variables selectionnees.

== Syntaxe

- #raw("opts = setvaropts(opts, selection, Name, Value)");
- #raw("opts = setvaropts(opts, selection, Name1, Value1, Name2, Value2, ...)");

== Argument d'entrée

/ opts: un objet d'options d'importation (texte delimite ou feuille de calcul).
/ selection: noms de variables (chaine de caracteres, tableau de chaines ou cellule) ou indices numeriques.
/ Name, Value: options par variable comme 'Type', 'InputFormat', 'WhitespaceRule', 'EmptyFieldRule' ou 'FillValue'.

== Argument de sortie

/ opts: l'objet d'options d'importation mis a jour.

== Description

#strong[setvaropts]; definit les options d'importation par variable pour les variables selectionnees d'un objet d'options d'importation et retourne l'objet mis a jour.

 La selection est validee par rapport aux noms de variables declares. Definir l'option 'Type' met aussi a jour l'entree correspondante de #strong[VariableTypes];.


== Exemple

``````matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy')
``````


== Voir aussi

#nlink(<spreadsheet:getvaropts>)[getvaropts];, #nlink(<spreadsheet:setvartype>)[setvartype];, #nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:spreadsheetImportOptions>)[spreadsheetImportOptions];, #nlink(<spreadsheet:readtable>)[readtable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
