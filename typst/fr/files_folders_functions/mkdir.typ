#import "nelson_help.typ": *

= mkdir <files_folders_functions:mkdir>

Crée un nouveau répertoire.

== Syntaxe

- #raw("mkdir(dirname)");
- #raw("mkdir(parentdir, dirname)");
- #raw("status = mkdir(dirname)");
- #raw("status = mkdir(parentdir, dirname)");
- #raw("[status, msg] = mkdir(dirname)");
- #raw("[status, msg] = mkdir(parentdir, dirname)");
- #raw("[status, msg, msgID] = mkdir(dirname)");
- #raw("[status, msg, msgID] = mkdir(parentdir, dirname)");

== Argument d'entrée

/ dirname: a string: nom du répertoire à créer.
/ parentdir: a string: répertoire parent où sera créé#strong[dirname];.

== Argument de sortie

/ status: a logical true or false
/ msg: a string: error message
/ msgID: a string: identifiant du message

== Description

Crée un répertoire nommé#strong[dirname]; dans le répertoire parent.

 Si aucun répertoire parent n'est précisé, le répertoire de travail actuel est utilisé.

 Si le répertoire est créé ou existe déjà, #strong[status]; vaut true, sinon false.


== Exemple

``````matlab
mkdir(tempdir(), 'subdir_example')
if isdir([tempdir(), 'subdir_example'])
	disp('OK')
else
	disp('NOT OK')
end

``````


== Voir aussi

#nlink(<files_folders_functions:isdir>)[isdir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.4.0], [input arguments support scalar string array type],
  [2.0.0], [ajout de l'argument de sortie msgID.],
)

// Auteur: Allan CORNET
