#import "nelson_help.typ": *

= unicode2native <characters_encoding:unicode2native>

Convertit la représentation de caractères unicode en octets

== Syntaxe

- #raw("bytes = unicode2native(str, charset)");

== Argument d'entrée

/ str: une chaîne scalaire ou un tableau de caractères vectoriel.
/ charset: une chaîne scalaire ou un tableau de caractères vectoriel.

== Argument de sortie

/ bytes: un vecteur uint8

== Description

#strong[unicode2native]; convertit les caractères unicode en un tableau numérique.

 #strong[bytes \= unicode2native(str)]; convertit les caractères unicode en un tableau numérique (le jeu de caractères natif de la machine).

 #strong[bytes \= unicode2native(str, charset)]; convertit les caractères unicode en un tableau numérique (jeu de caractères #strong[charset]; au lieu du jeu de caractères natif).

 Liste des jeux de caractères :#link("http://www.iana.org/assignments/character-sets/character-sets.xhtml")[http:\/\/www.iana.org\/assignments\/character-sets\/character-sets.xhtml];


== Bibliographie

ICU library

== Exemple

``````matlab
R = unicode2native('片仮名', 'SHIFT_JIS')
``````


== Voir aussi

#nlink(<characters_encoding:native2unicode>)[native2unicode];, #nlink(<string:1_create_convert_text.char>)[char];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
