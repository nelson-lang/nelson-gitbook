#import "nelson_help.typ": *

= searchenv <os_functions:searchenv>

Recherche un fichier en utilisant les chemins définis dans une variable d'environnement.

== Syntaxe

- #raw("c = searchenv(filename, env_name)");

== Argument d'entrée

/ env\_name: une chaîne : nom de la variable d'environnement.
/ filename: une chaîne : nom de fichier recherché dans la variable d'environnement.

== Argument de sortie

/ c: une cellule de chaînes : chemins complets trouvés dans la variable d'environnement.

== Description

#strong[searchenv]; recherche un fichier en parcourant les chemins d'une variable d'environnement.


== Exemple

``````matlab
[modules, paths] = getmodules();
env_value = '';
for p = paths
 env_value = [env_value, pathsep, p];
end

setenv('MY_PATH_ENV', env_value);
c = searchenv('loader.m', 'MY_PATH_ENV')
``````


== Voir aussi

#nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:setenv>)[setenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
