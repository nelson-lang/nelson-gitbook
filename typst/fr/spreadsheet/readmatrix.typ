#import "nelson_help.typ": *

= readmatrix <spreadsheet:readmatrix>

Créer une matrice à partir d'un fichier.

== Syntaxe

- #raw("M = readmatrix(filename)");
- #raw("M = readmatrix(filename, opts)");
- #raw("M = readmatrix(filename, opts, 'OutputType', type)");

== Argument d'entrée

/ filename: une chaîne : un nom de fichier existant source.
/ opts: Objet nelson.io.text.DelimitedTextImportOptions
/ type: une chaîne : 'double', 'single', 'char', 'string', 'int8', 'int16', 'int32', 'int64', 'uint8', 'uint16', 'uint32', 'uint64'.

== Argument de sortie

/ M: une matrice.

== Description

#strong[M \= readmatrix(filename)]; crée une matrice en important des données orientées colonne depuis un fichier texte ou tableur.

 #strong[M \= readmatrix(filename, opts)]; crée une matrice en utilisant les paramètres définis dans l'objet d'options d'importation#strong[opts];. L'objet d'options d'importation permet de personnaliser la façon dont #strong[readmatrix]; interprète le fichier, offrant un meilleur contrôle, de meilleures performances et la possibilité de réutiliser la configuration comparé à la syntaxe par défaut.


== Exemples

``````matlab
  filename = [tempdir,'readmatrix_1.csv'];  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T = table(Names, Age, Height, Weight);  writetable(T, filename)  M = readmatrix(filename)  
``````

``````matlab
  filename = [tempdir,'readmatrix_2.csv'];  M = magic(6);  writematrix(M, filename)  options = detectImportOptions(filename)  options.DataLines = [2 4];  M2 = readmatrix(filename, options, 'OutputType', 'int64')  M3 = readmatrix(filename, options, 'OutputType', 'char')    
``````


== Voir aussi

#nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions];, #nlink(<spreadsheet:writematrix>)[writematrix];, #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];, #nlink(<spreadsheet:writetable>)[writetable];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<stream_manager:fileread>)[fileread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
