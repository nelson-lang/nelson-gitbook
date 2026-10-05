#import "nelson_help.typ": *

= cd <files_folders_functions:cd>

Change le répertoire courant de Nelson.

== Syntaxe

- #raw("cd(dirname)");
- #raw("cd dirname");
- #raw("previous_path = cd(dirname)");
- #raw("cd ..");
- #raw("cd");

== Argument d'entrée

/ dirname: a string: nom du répertoire où se déplacer.

== Argument de sortie

/ previous\_path: a string: répertoire précédent.

== Description

Change le répertoire de travail courant vers #strong[dirname];.

 #strong[a \= cd()]; sans argument renvoie le répertoire de travail courant.

 #strong[cd()]; sans argument affiche le répertoire de travail courant.

 


== Exemple

``````matlab
previous = cd(tempdir())
cd
cd ..

``````


== Voir aussi

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:pwd>)[pwd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
