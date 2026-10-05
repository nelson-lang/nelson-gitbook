#import "nelson_help.typ": *

= setenv <os_functions:setenv>

Definir ou supprimer une variable d'environnement.

== Syntaxe

- #raw("setenv(env_name, env_value)");
- #raw("setenv(env_name)");

== Argument d'entrée

/ env\_name: une chaine : nom de la variable d'environnement.
/ env\_value: une chaine : valeur de la variable d'environnement.

== Description

#strong[setenv]; definit la valeur d'une variable d'environnement.

 #strong[setenv(env\_name)]; supprime la variable de l'environnement du processus courant.

 #strong[setenv(env\_name, '')]; conserve la variable avec une valeur vide.


== Exemple

``````matlab
setenv('MY_ENV_VAR', 'funvalue')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR', '')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR')
getenv('MY_ENV_VAR')
``````


== Voir aussi

#nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:searchenv>)[searchenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [suppression de variable d'environnement ajoutee],
)

// Auteur: Allan CORNET
