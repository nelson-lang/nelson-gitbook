#import "nelson_help.typ": *

= loadenv <os_functions:loadenv>

Charger les variables d'environnement définies dans des fichiers .env ou des fichiers texte ordinaires.

== Syntaxe

- #raw("loadenv(filename)");
- #raw("D = loadenv(filename)");

== Argument d'entrée

/ filename: chaine de caractères: nom du fichier d'environnement.

== Argument de sortie

/ s: dictionnaire: les variables d'environnement et leurs valeurs.

== Description

#strong[loadenv(filename)]; charge les variables d'environnement à partir d'un fichier .env ou texte brut en analysant une paire clé-valeur par ligne et les définit comme variables d'environnement dans l'environnement Nelson.

 #strong[D \= loadenv(filename)]; renvoie un dictionnaire contenant les paires clé-valeur analysées. Lorsqu'un argument de sortie est spécifié, loadenv ne modifie pas l'environnement Nelson.


== Exemple

``````matlab
env_file = [modulepath('os_functions', 'tests'), '/sample.env'];
D = loadenv(env_file)
getenv('Key1')
loadenv(env_file)
getenv('Key1')
``````


== Voir aussi

#nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:getenv>)[getenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
