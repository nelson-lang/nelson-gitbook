#import "nelson_help.typ": *

= filewrite <stream_manager:filewrite>

Écrire du texte dans un fichier.

== Syntaxe

- #raw("filewrite(filename, txt)");
- #raw("filewrite(filename, txt, eol)");
- #raw("filewrite(filename, txt, eol, encoding)");

== Argument d'entrée

/ filename: une chaîne : un nom de fichier
/ txt: une chaîne, une cellule de chaînes ou un tableau de chaînes : contenu à enregistrer dans le fichier
/ eol: une chaîne : 'native' (par défaut système), 'pc' \[(char(13), char(10)\], 'unix' \[char(10)\]
/ encoding: une chaîne : 'UTF-8' (par défaut), 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

== Description

#strong[filewrite]; enregistre un tableau de caractères, une cellule de chaînes ou un tableau de chaînes dans un fichier.

 Par défaut, le fichier est enregistré en UTF-8 (sans BOM).


== Exemples

``````matlab
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'string')
    	filewrite([tempdir(), 'CHANGELOG.md'], str)
``````

characters encoding

``````matlab

str = 'живете зело, земля, и иже и како люди';
filewrite([tempdir(), 'example_filewrite.txt'], str, 'native', 'windows-1251')
``````


== Voir aussi

#nlink(<stream_manager:fileread>)[fileread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
