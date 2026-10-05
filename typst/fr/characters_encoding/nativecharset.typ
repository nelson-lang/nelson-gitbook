#import "nelson_help.typ": *

= nativecharset <characters_encoding:nativecharset>

Trouve tous les jeux de caractères qui semblent cohérents avec l'entrée

== Syntaxe

- #raw("ce = nativecharset(bytes)");

== Argument d'entrée

/ bytes: un vecteur uint8, ou une chaîne ou un tableau de caractères ligne

== Argument de sortie

/ ce: une cellule de chaînes.

== Description

#strong[nativecharset]; trouve tous les jeux de caractères qui semblent cohérents avec l'entrée, retournant une cellule de chaînes avec les résultats.

 Les résultats sont ordonnés avec la meilleure correspondance de qualité en premier.

 Liste des jeux de caractères :#link("https://www.iana.org/assignments/character-sets/character-sets.xhtml")[https:\/\/www.iana.org\/assignments\/character-sets\/character-sets.xhtml];


== Bibliographie

ICU library

== Exemple

``````matlab
C = uint8([194   232   240   242   243   224   235   252   237   224   255]);
nativecharset(C)
``````


== Voir aussi

#nlink(<characters_encoding:unicode2native>)[unicode2native];, #nlink(<string:1_create_convert_text.char>)[char];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
