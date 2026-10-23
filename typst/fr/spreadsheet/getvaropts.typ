#import "nelson_help.typ": *

= getvaropts <spreadsheet:getvaropts>

Obtenir les options d'importation des variables selectionnees.

== Syntaxe

- #raw("value = getvaropts(opts, selection)");

== Argument d'entrée

/ opts: un objet d'options d'importation (texte delimite ou feuille de calcul).
/ selection: noms de variables (chaine de caracteres, tableau de chaines ou cellule) ou indices numeriques.

== Argument de sortie

/ value: un tableau de structures contenant les options par variable des variables selectionnees.

== Description

#strong[getvaropts]; retourne les options d'importation par variable des variables selectionnees d'un objet d'options d'importation.


== Exemple

``````matlab
opts = delimitedTextImportOptions('NumVariables', 2);
opts.VariableNames = ["date", "value"];
opts.VariableTypes = ["datetime", "double"];
opts = setvaropts(opts, "date", 'InputFormat', 'MM/dd/yy');
getvaropts(opts, "date")
``````


== Voir aussi

#nlink(<spreadsheet:setvaropts>)[setvaropts];, #nlink(<spreadsheet:setvartype>)[setvartype];, #nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
