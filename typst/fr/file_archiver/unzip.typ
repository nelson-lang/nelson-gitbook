#import "nelson_help.typ": *

= unzip <file_archiver:unzip>

Décompresser une archive zip.

== Syntaxe

- #raw("res = unzip(zipname)");
- #raw("res = unzip(zipname, rootdir)");

== Argument d'entrée

/ zipname: une chaîne : nom du fichier d'archive zip.
/ rootdir: un vecteur de caractères ou une chaîne : chemin racine pour les fichiers à décompresser.

== Argument de sortie

/ res: un tableau de cellules de vecteurs de caractères contenant les noms des fichiers décompressés.

== Description

#strong[unzip]; extracts archived contents. Timestamps and attributes are preserved for each file.


== Exemple

``````matlab
zip([tempdir(), 'test.zip'], [nelsonroot(), '/module_skeleton']);
r = unzip([tempdir(), 'test.zip'], [tempdir(), createGUID()])
``````


== Voir aussi

#nlink(<file_archiver:zip>)[zip];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
