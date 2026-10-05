#import "nelson_help.typ": *

= zip <file_archiver:zip>

Compresser des fichiers dans une archive zip.

== Syntaxe

- #raw("res = zip(zipname, files)");
- #raw("res = zip(zipname, files, rootdir)");

== Argument d'entrée

/ zipname: une chaîne : fichier de destination de l'archive zip.
/ files: un vecteur de caractères, un tableau de cellules de vecteurs de caractères, ou un tableau de chaînes : noms des fichiers ou dossiers à compresser.
/ rootdir: un vecteur de caractères ou une chaîne : chemin racine pour les fichiers à compresser.

== Argument de sortie

/ res: un tableau de cellules de vecteurs de caractères contenant les noms des fichiers inclus dans l'archive zip.

== Description

#strong[zip]; compresse des fichiers et des répertoires dans une archive zip.

 Chaque fichier individuel doit être inférieur à 4 Go.

 Le nombre de fichiers spécifiés doit être inférieur à 65535.


== Exemple

``````matlab
zip([tempdir(), 'test.zip'], [nelsonroot(), '/module_skeleton'])

``````


== Voir aussi

#nlink(<file_archiver:unzip>)[unzip];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
