#import "nelson_help.typ": *

= Feuille de calcul

Le module Feuille de calcul fournit des fonctions pour lire et écrire des données tabulaires depuis et vers des formats de feuille de calcul basés sur du texte, tels que CSV et les fichiers séparés par délimiteurs.

 Il prend en charge l'importation vers différents types de données comme les tableaux numériques, les cellules de chaînes et les tables, ainsi que leur exportation vers des fichiers.

 Ce module permet d'échanger des données avec des logiciels de tableur (Excel, LibreOffice Calc, etc.) et avec d'autres applications.

== Functions

- #nlink(<spreadsheet:csvread>)[csvread]: Lire un fichier de valeurs séparées par des virgules (CSV).
- #nlink(<spreadsheet:csvwrite>)[csvwrite]: Écrire un fichier de valeurs séparées par des virgules (CSV).
- #nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions]: Creer des options pour importer des donnees texte delimitees.
- #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions]: Créer des options d'importation basées sur le contenu du fichier.
- #nlink(<spreadsheet:dlmread>)[dlmread]: Lire une matrice numérique depuis un fichier texte utilisant un délimiteur.
- #nlink(<spreadsheet:dlmwrite>)[dlmwrite]: Écrire une matrice numérique dans un fichier texte en utilisant un délimiteur.
- #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions]: Créer des options pour importer des données JSON.
- #nlink(<spreadsheet:readcell>)[readcell]: Créer une cellule à partir d'un fichier.
- #nlink(<spreadsheet:readmatrix>)[readmatrix]: Créer une matrice à partir d'un fichier.
- #nlink(<spreadsheet:readtable>)[readtable]: Créer une table à partir d'un fichier.
- #nlink(<spreadsheet:readtimetable>)[readtimetable]: Crée une timetable depuis un fichier.
- #nlink(<spreadsheet:readvars>)[readvars]: Créer des variables en lisant les colonnes d'un fichier.
- #nlink(<spreadsheet:writecell>)[writecell]: Écrire un tableau de cellules dans un fichier.
- #nlink(<spreadsheet:writematrix>)[writematrix]: Écrire une matrice dans un fichier.
- #nlink(<spreadsheet:writetable>)[writetable]: Écrire une table dans un fichier.
- #nlink(<spreadsheet:writetimetable>)[writetimetable]: Écrit une timetable dans un fichier.
- #nlink(<spreadsheet:xlsfinfo>)[xlsfinfo]: Retourner les informations d'un fichier tableur Open XML.
- #nlink(<spreadsheet:xlsread>)[xlsread]: Lire les donnees d'un fichier tableur Open XML.
- #nlink(<spreadsheet:xlswrite>)[xlswrite]: Ecrire des donnees dans un fichier tableur Open XML.


#nested[
#pagebreak(weak: true)
#include "csvread.typ"
#pagebreak(weak: true)
#include "csvwrite.typ"
#pagebreak(weak: true)
#include "delimitedTextImportOptions.typ"
#pagebreak(weak: true)
#include "detectImportOptions.typ"
#pagebreak(weak: true)
#include "dlmread.typ"
#pagebreak(weak: true)
#include "dlmwrite.typ"
#pagebreak(weak: true)
#include "jsonImportOptions.typ"
#pagebreak(weak: true)
#include "readcell.typ"
#pagebreak(weak: true)
#include "readmatrix.typ"
#pagebreak(weak: true)
#include "readtable.typ"
#pagebreak(weak: true)
#include "readtimetable.typ"
#pagebreak(weak: true)
#include "readvars.typ"
#pagebreak(weak: true)
#include "writecell.typ"
#pagebreak(weak: true)
#include "writematrix.typ"
#pagebreak(weak: true)
#include "writetable.typ"
#pagebreak(weak: true)
#include "writetimetable.typ"
#pagebreak(weak: true)
#include "xlsfinfo.typ"
#pagebreak(weak: true)
#include "xlsread.typ"
#pagebreak(weak: true)
#include "xlswrite.typ"
]
