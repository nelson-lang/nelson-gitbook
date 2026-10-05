#import "nelson_help.typ": *

= writecell <spreadsheet:writecell>

Écrire un tableau de cellules dans un fichier.

== Syntaxe

- #raw("writecell(C)");
- #raw("writecell(C, filename)");
- #raw("writecell(..., Name, Value)");

== Argument d'entrée

/ C: un tableau de cellules.
/ filename: une chaîne : nom de fichier de destination.
/ Name, Value: Arguments Nom-Valeur

== Description

#strong[writecell]; écrit un tableau de cellules dans un fichier au format CSV.

 #strong[writecell]; ne prend pas en charge les matrices creuses (sparse).

 #strong[writecell]; formate les données numériques en utilisant le format long G.

 

 Arguments Nom-Valeur disponibles

 

 Les paires nom-valeur doivent suivre tous les autres arguments.

 L'ordre des paires nom-valeur n'a pas d'importance

 Les options Delimiter et QuoteStrings ne s'appliquent qu'aux fichiers texte délimités.

 

 #strong[FileType];: Specifies the type of output file

 Syntaxe : #strong['FileType','text'];

 Prend en charge les fichiers texte délimités (.txt, .dat, .csv)

 

 #strong[WriteMode];: Controls how data is written to the file

 Syntaxe : #strong['WriteMode', mode];

 Options :

 'overwrite' (par défaut) - crée un nouveau fichier ou remplace le contenu existant

 'append' - ajoute les données à la fin du fichier existant

 Si le fichier cible n'existe pas, un nouveau fichier sera créé quel que soit le mode.

 

 #strong[Delimiter];: Defines the character used to separate fields

 Syntaxe : #strong['Delimiter', delimiter];

 Délimiteurs disponibles : uniquement applicables aux fichiers texte délimités.

 

#table(
  columns: 3,
  table.header([Spécificateur], [Alternative], [Description], ),
  [#raw("\n              ','\n            ");], [#raw("\n              'comma'\n            ");], [Virgule (par défaut)], 
  [#raw("\n              '\n              '\n            ");], [#raw("\n              'space'\n            ");], [Caractère espace], 
  [#raw("\n              '\\t'\n            ");], [#raw("\n              'tab'\n            ");], [Tabulation], 
  [#raw("\n              ';'\n            ");], [#raw("\n              'semi'\n            ");], [Point-virgule], 
  [#raw("\n              '|'\n            ");], [#raw("\n              'bar'\n            ");], [Barre verticale], 
)
 

 #strong[QuoteStrings]; : contrôle le comportement de citation des textes (applicable uniquement aux fichiers texte délimités).

 #strong['QuoteStrings', option];

 with #strong[options];

 #strong['minimal']; (par défaut) : cite uniquement les textes contenant des délimiteurs, des fins de ligne ou des guillemets.

 #strong['all']; : cite toutes les variables texte.

 #strong['none']; : n'utilise pas de guillemets.


== Exemple

``````matlab
C = {'ID', 'Product', 'Price'; 1, 'Laptop', 799.99; 2, 'Phone', 699.49; 3, 'Tablet', 499.00};
filename = [tempdir(), 'writecell_example.csv'];
writecell(C, filename);
R = fileread(filename)

``````


== Voir aussi

#nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:csvwrite>)[csvwrite];, #nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
