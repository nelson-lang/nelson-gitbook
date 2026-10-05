#import "nelson_help.typ": *

= getenv <os_functions:getenv>

Obtenir la valeur d'une variable d'environnement.

== Syntaxe

- #raw("s = getenv(env_name)");

== Argument d'entrée

/ env\_name: scalaire chaîne, vecteur de caractères, tableau de chaînes, cellule de vecteurs de caractères : nom de la variable d'environnement.

== Argument de sortie

/ s: scalaire chaîne, vecteur de caractères, tableau de chaînes, cellule de vecteurs de caractères : valeur de la variable d'environnement.

== Description

#strong[getenv]; retourne la valeur d'une variable d'environnement si elle existe.

 Si la variable d'environnement n'existe pas, elle renverra ' '.

 Si#strong[env\_name]; est une cellule non scalaire de vecteurs de caractères ou un tableau de chaînes, alors#strong[s]; a les mêmes dimensions et le même type que #strong[env\_name];.

 Si #strong[env\_name]; est une chaîne scalaire, alors#strong[s]; est un vecteur de caractères.


== Exemple

``````matlab
getenv('OS')
getenv('myenvvar')
getenv(["PATH"; "OS"])
getenv({'PATH'; 'OS'})

``````


== Voir aussi

#nlink(<os_functions:setenv>)[setenv];, #nlink(<os_functions:searchenv>)[searchenv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.4.0], [Récupération des valeurs de plusieurs variables d'environnement.],
)

// Auteur: Allan CORNET
