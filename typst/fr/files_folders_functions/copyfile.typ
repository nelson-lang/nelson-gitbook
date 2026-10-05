#import "nelson_help.typ": *

= copyfile <files_folders_functions:copyfile>

Copie des fichiers ou des dossiers.

== Syntaxe

- #raw("copyfile(source, destination)");
- #raw("[status, msg] = copyfile(source, destination)");
- #raw("[status, msg] = copyfile(source, destination, 'f')");
- #raw("[status, msg, msgID] = copyfile(source, destination)");
- #raw("[status, msg, msgID] = copyfile(source, destination, 'f')");

== Argument d'entrée

/ source: a string: fichier ou répertoire source.
/ destination: a string: fichier ou répertoire de destination.
/ 'f' or 'F': forcer la copie même si la destination n'est pas inscriptible.

== Argument de sortie

/ status: un booléen: vrai ou faux
/ msg: a string: message d'erreur
/ msgID: a string: identifiant du message

== Description

#strong[copyfile(source, destination)]; copie le fichier ou le répertoire #strong[source]; (et ses sous-répertoires) vers le fichier ou répertoire #strong[destination];.

 Si #strong[source]; est un répertoire,#strong[destination]; ne peut pas être un fichier.

 #strong[copyfile]; remplace les fichiers existants sans avertissement.


== Exemple

``````matlab
copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
[status, msg] = copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
``````


== Voir aussi

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:rmfile>)[rmfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.4.0], [input arguments support scalar string array type],
  [2.0.0], [msgID output argument added.],
)

// Auteur: Allan CORNET
