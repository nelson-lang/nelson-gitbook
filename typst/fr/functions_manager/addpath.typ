#import "nelson_help.typ": *

= addpath <functions_manager:addpath>

Ajouter des répertoires au chemin de recherche des fonctions.

== Syntaxe

- #raw("addpath(dirname)");
- #raw("addpath(dirname, ..., dirname)");
- #raw("addpath(dirname, ..., dirname, '-begin')");
- #raw("addpath(dirname, ..., dirname, '-end')");
- #raw("addpath(dirname, ..., dirname, '-frozen')");
- #raw("previous = addpath(dirname)");
- #raw("previous = addpath(dirname, ..., dirname)");
- #raw("previous = addpath(dirname, ..., dirname, '-begin')");
- #raw("previous = addpath(dirname, ..., dirname, '-end')");

== Argument d'entrée

/ dirname: une chaîne : un répertoire
/ '-end' or '-begin': ajouter dirname à la fin ou au début de la liste.
/ '-frozen': désactive la détection de changement de dossier pour les dossiers ajoutés ou modifiés.

== Argument de sortie

/ previous: retourne le chemin précédent avant ajout

== Description

#strong[addpath]; ajoute des répertoires au chemin de recherche.

 Il est également possible d'ajouter des listes de noms de répertoires séparés par pathsep.

 Les chemins inexistants ne seront pas ajoutés et un avertissement sera émis.

 Les observateurs de fichiers sont désactivés pour les modules internes.


== Exemple

``````matlab
path()
addpath(tempdir())
path
rmpath(tempdir())
path
``````


== Voir aussi

#nlink(<functions_manager:path>)[path];, #nlink(<functions_manager:rmpath>)[rmpath];, #nlink(<functions_manager:restoredefaultpath>)[restoredefaultpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
