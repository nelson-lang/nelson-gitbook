#import "nelson_help.typ": *

= isstr <core:isstr>

Détermine si l'entrée est un tableau de caractères (obsolète).

== Syntaxe

- #raw("tf = isstr(x)");

== Argument d'entrée

/ x: une valeur, de type quelconque.

== Argument de sortie

/ tf: un booléen : #strong[true]; si #strong[x]; est un tableau de caractères, #strong[false]; sinon.

== Description

#strong[isstr]; est un alias obsolète de #strong[ischar];. Il renvoie #strong[true]; lorsque #strong[x]; est un tableau de caractères et #strong[false]; sinon.

 Un tableau de chaînes (créé avec des guillemets doubles) n'est pas un tableau de caractères, donc #strong[isstr]; renvoie #strong[false]; dans ce cas.

 #strong[isstr]; est conservé pour la compatibilité avec le code existant. Utilisez plutôt #strong[ischar]; dans le nouveau code.


== Exemples

Un tableau de caractères :

``````matlab
tf = isstr('hello')
``````

Une valeur numérique n'est pas un tableau de caractères :

``````matlab
tf = isstr(42)
``````

Une chaîne n'est pas un tableau de caractères :

``````matlab
tf = isstr("hello")
``````


== Voir aussi

#nlink(<types:ischar>)[ischar];, #nlink(<types:isstring>)[isstring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
