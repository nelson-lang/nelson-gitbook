#import "nelson_help.typ": *

= unsetenv <os_functions:unsetenv>

Supprime une variable d'environnement.

== Syntaxe

- #raw("unsetenv(env_name)");

== Argument d'entrée

/ env\_name: chaine scalaire ou vecteur de caracteres : nom de la variable d'environnement.

== Description

#strong[unsetenv]; supprime la variable d'environnement #strong[env\_name]; de l'environnement du processus courant.

 Si la variable n'existe pas, #strong[unsetenv]; n'a aucun effet.


== Exemple

``````matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
unsetenv('MY_ENV_VAR')
isenv('MY_ENV_VAR')
``````


== Voir aussi

#nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:isenv>)[isenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
