#import "../nelson_help.typ": *

= join <string:6_join_split_extract.join>

Combine des chaînes.

== Syntaxe

- #raw("res = join(str)");
- #raw("res = join(str, delimiter)");
- #raw("res = join(str, dim)");
- #raw("res = join(str, delimiter, dim)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ delimiter: une chaîne, un tableau de chaînes ou une cellule de chaînes : caractères utilisés pour séparer et joindre les chaînes.
/ dim: positive integer: Dimension along which to join strings.

== Argument de sortie

/ res: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Description

#strong[res \= join(str)]; combine les éléments de #strong[str]; en un seul texte en les joignant avec un espace comme délimiteur par défaut.

 L'entrée, #strong[str];, peut être un tableau de chaînes ou une cellule de vecteurs de caractères. La sortie, #strong[res];, a le même type de données que #strong[str];.

 Si #strong[str]; est un tableau 1-by-N ou N-by-1, #strong[res]; sera un scalaire de chaîne ou une cellule contenant un seul vecteur de caractères.

 Si #strong[str]; est un tableau M-by-N, alors #strong[res]; sera un tableau M-by-1.

 Pour des tableaux de n'importe quelle taille, join concatène les éléments le long de la dernière dimension ayant une taille supérieure à 1.

 #strong[res \= join(str, delimiter)]; joint les éléments de #strong[str]; en utilisant le délimiteur spécifié au lieu de l'espace par défaut.

 Si delimiter est un tableau de délimiteurs et que #strong[str]; a N éléments le long de la dimension de jointure, delimiter doit avoir N-1 éléments le long de la même dimension. Toutes les autres dimensions de delimiter doivent soit avoir la taille 1, soit correspondre aux dimensions correspondantes de #strong[str];.

 #strong[res \= join(str, dim)]; combine les éléments de #strong[str]; le long de la dimension spécifiée #strong[dim];.

 #strong[res \= join(str, delimiter, dim)]; joint les éléments de #strong[str]; le long de la dimension spécifiée #strong[dim];, en utilisant delimiter pour les séparer.


== Exemple

``````matlab
str = ["x","y","z"; "a","b","c"];
delimiters = [" + "," = "; " - "," = "];
R = join(str, delimiters)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.append>)[append];, #nlink(<string:1_create_convert_text.strcat>)[strcat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
