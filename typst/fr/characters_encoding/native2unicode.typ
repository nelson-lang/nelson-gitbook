#import "nelson_help.typ": *

= native2unicode <characters_encoding:native2unicode>

Convertit la représentation d'octets en caractères unicode

== Syntaxe

- #raw("str = native2unicode(bytes, charset)");

== Argument d'entrée

/ bytes: un vecteur uint8
/ charset: une chaîne scalaire ou un tableau de caractères vectoriel.

== Argument de sortie

/ str: un tableau de caractères vectoriel.

== Description

#strong[native2unicode]; convertit un vecteur uint8 en caractères unicode.

 #strong[str \= native2unicode(bytes)]; convertit un vecteur uint8 en caractères unicode (en utilisant le jeu de caractères natif de la machine).

 #strong[str \= native2unicode(bytes, charset)]; convertit un vecteur uint8 en caractères unicode (jeu de caractères #strong[charset]; au lieu du jeu de caractères natif).

 Liste des jeux de caractères : #link("https://www.iana.org/assignments/character-sets/character-sets.xhtml")[https:\/\/www.iana.org\/assignments\/character-sets\/character-sets.xhtml];


== Bibliographie

ICU library

== Exemple

``````matlab
native2unicode(uint8([149   208   137   188   150   188]), 'SHIFT_JIS')
``````


== Voir aussi

#nlink(<characters_encoding:unicode2native>)[unicode2native];, #nlink(<characters_encoding:native2unicode>)[native2unicode];, #nlink(<string:1_create_convert_text.char>)[char];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
