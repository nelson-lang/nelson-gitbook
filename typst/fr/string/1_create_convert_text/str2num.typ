#import "../nelson_help.typ": *

= str2num <string:1_create_convert_text.str2num>

Convertit un tableau de caractères en tableau numérique.

== Syntaxe

- #raw("x = str2num(s)");
- #raw("[x, ok] = str2num(s)");

== Argument d'entrée

/ s: un vecteur de caractères ou une chaîne scalaire contenant une expression numérique.

== Argument de sortie

/ x: le résultat numérique, ou #strong[\[\]]; si le texte ne peut être évalué en nombre.
/ ok: un logique : #strong[true]; si la conversion a réussi.

== Description

#strong[x \= str2num(s)]; convertit le tableau de caractères #strong[s]; en tableau numérique en l'évaluant.

 Comme #strong[str2num]; évalue son entrée, préférez #strong[str2double]; pour les conversions scalaires simples.


== Exemple

``````matlab
x = str2num('[1 2 3]')
[y, ok] = str2num('4 5; 6 7')
``````


== Voir aussi

#nlink(<string:1_create_convert_text.str2double>)[str2double];, #nlink(<string:1_create_convert_text.num2str>)[num2str];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
