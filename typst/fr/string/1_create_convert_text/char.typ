#import "../nelson_help.typ": *

= char <string:1_create_convert_text.char>

Convertit en tableau de caractères.

== Syntaxe

- #raw("res = char(var)");
- #raw("res = char(var1, var2)");
- #raw("res = char(var1, var2, ..., varN)");

== Argument d'entrée

/ var: une cellule de chaînes, un tableau de chaînes ou un tableau numérique.
/ var1, var2, ..., varN: chaînes ou tableaux numériques.

== Argument de sortie

/ res: un tableau de caractères

== Description

#strong[char]; convertit une entrée numérique en données de caractères en utilisant le caractère Unicode correspondant pour chaque élément.
== Exemples

``````matlab
M = [ 104   101   108   108   111;
20320   22909 32    32    32];
char(M)
``````

``````matlab
R = char('these', 'are', 'test', 'strings')
``````

``````matlab
R = char(["these"; "are"; "test"; "strings"])
``````


== Voir aussi

#nlink(<double:double>)[double];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
