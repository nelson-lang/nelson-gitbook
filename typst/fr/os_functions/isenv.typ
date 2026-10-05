#import "nelson_help.typ": *

= isenv <os_functions:isenv>

Determine si une variable d'environnement existe.

== Syntaxe

- #raw("tf = isenv(env_name)");

== Argument d'entrée

/ env\_name: chaine scalaire, vecteur de caracteres, tableau de chaines, tableau de cellules de vecteurs de caracteres : nom de la variable d'environnement.

== Argument de sortie

/ tf: logique : true si la variable d'environnement est definie, false sinon.

== Description

#strong[isenv]; renvoie #strong[true]; si la variable d'environnement #strong[env\_name]; est definie dans l'environnement du processus courant, meme si sa valeur est vide.

 Si #strong[env\_name]; est un tableau de chaines ou un tableau de cellules non scalaire, alors #strong[tf]; a les memes dimensions que #strong[env\_name];.


== Exemple

``````matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
isenv('A_VARIABLE_THAT_DOES_NOT_EXIST')
isenv(["MY_ENV_VAR", "A_VARIABLE_THAT_DOES_NOT_EXIST"])

``````


== Voir aussi

#nlink(<os_functions:getenv>)[getenv];, #nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:unsetenv>)[unsetenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
