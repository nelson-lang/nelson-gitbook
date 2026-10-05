#import "../nelson_help.typ": *

= string <string:1_create_convert_text.string>

Constructeur de tableau de chaînes.

== Syntaxe

- #raw("res = string(var)");

== Argument d'entrée

/ var: des caractères, une cellule de vecteurs de caractères, ou un tableau logique ou numérique.

== Argument de sortie

/ res: un tableau de chaînes

== Description

#strong[string]; convertit l'entrée en tableau de chaînes.


== Exemples

``````matlab
R = string({'these', 'are'; 'test', 'strings'})
R2 = ["these", "are"; "test", "strings"];
``````

``````matlab
M = [ 104   101   108   108   111;
20320   22909 32    32    32];
R = string(M)
D = double(R)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.strings>)[strings];, #nlink(<double:double>)[double];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
