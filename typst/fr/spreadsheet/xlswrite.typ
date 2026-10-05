#import "nelson_help.typ": *

= xlswrite <spreadsheet:xlswrite>

Ecrire des donnees dans un fichier tableur Open XML.

== Syntaxe

- #raw("status = xlswrite(filename, A)");
- #raw("status = xlswrite(filename, A, sheet)");
- #raw("status = xlswrite(filename, A, sheet, range)");
- #raw("[status, message] = xlswrite(...)");

== Argument d'entrée

/ filename: une chaine : nom de fichier .xlsx.
/ A: tableau, cellule, table ou timetable a ecrire.
/ sheet: nom de feuille ou indice de feuille positif.
/ range: cellule de depart ou plage en notation A1.

== Argument de sortie

/ status: valeur logique indiquant si l'ecriture a reussi.
/ message: chaine vide en cas de succes, sinon message d'erreur.

== Description

#strong[xlswrite]; ecrit les valeurs Nelson prises en charge dans un fichier .xlsx avec le backend Open XML.


== Exemple

Ecrire puis relire une matrice.

``````matlab
filename = [tempdir(), 'xlswrite_example.xlsx']; [status, message] = xlswrite(filename, magic(3), 'Data', 'A1'); values = xlsread(filename, 'Data', 'A1:C3')
``````


== Voir aussi

#nlink(<spreadsheet:xlsread>)[xlsread];, #nlink(<spreadsheet:xlsfinfo>)[xlsfinfo];, #nlink(<spreadsheet:writematrix>)[writematrix];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [support .xlsx Open XML ajoute.],
)

// Auteur: Allan CORNET
