#import "nelson_help.typ": *

= keyHash <dictionary:keyHash>

Créer un code de hachage pour une clé de dictionnaire.

== Syntaxe

- #raw("H = keyHash(A)");

== Argument d'entrée

/ A: tableau

== Argument de sortie

/ H: scalaire : uint64, code de hachage.

== Description

#strong[H \= keyHash(A)]; renvoie un scalaire uint64 représentant le tableau d'entrée, #strong[A];.

 La fonction keyHash calcule un code de hachage dérivé des caractéristiques de l'entrée.

 Pour les classes personnalisées, keyHash peut nécessiter une surcharge pour garantir une équivalence correcte.


== Exemple

``````matlab
keyHash({'a', 'b', 1})
keyHash({1, 'a', 'b'})
``````


== Voir aussi

#nlink(<dictionary:keyMatch>)[keyMatch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
