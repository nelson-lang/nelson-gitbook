#import "nelson_help.typ": *

= formattedDisplayText <display_format:formattedDisplayText>

Capturer la sortie d'affichage en tant que chaîne.

== Syntaxe

- #raw("str = formattedDisplayText(V)");
- #raw("str = formattedDisplayText(V, Name, Value)");

== Argument d'entrée

/ V: Variable à retourner sous forme de chaîne
/ Name, Value: Arguments paires nom-valeur, Name : 'NumericFormat' ou 'LineSpacing'.

== Argument de sortie

/ str: une chaîne

== Description

#strong[str \= formattedDisplayText(V)]; renvoie la sortie d'affichage de #strong[V]; sous forme de chaîne.

 La chaîne est équivalente à la sortie de #strong[disp(V)];.


== Exemple

``````matlab
R = eye(3, 3)
str = formattedDisplayText(R)
R = rand(3, 3);
disp(R)
str = formattedDisplayText(R)
str = formattedDisplayText(R, 'NumericFormat', 'bank', 'LineSpacing', 'compact')
``````


== Voir aussi

#nlink(<display_format:display>)[display];, #nlink(<display_format:disp>)[disp];, #nlink(<display_format:format>)[format];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
