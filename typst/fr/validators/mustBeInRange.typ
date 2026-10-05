#import "nelson_help.typ": *

= mustBeInRange <validators:mustBeInRange>

Vérifie que la valeur se situe dans la plage spécifiée.

== Syntaxe

- #raw("mustBeInRange(value, lower, upper)");
- #raw("mustBeInRange(value, lower, upper, argPosition)");
- #raw("mustBeInRange(value, lower, upper, boundflag1)");
- #raw("mustBeInRange(value, lower, upper, boundflag1, argPosition)");
- #raw("mustBeInRange(value, lower, upper, boundflag1, boundflag2)");
- #raw("mustBeInRange(value, lower, upper, boundflag1, boundflag2, argPosition)");
- #raw("C++: void mustBeInRange(const ArrayOfVector& args, const ArrayOf& lower, const ArrayOf& upper, const std::wstring& boundflag1, const std::wstring& boundflag2, int argPosition)");

== Argument d'entrée

/ value: une valeur numérique : scalaire ou matrice
/ lower: une valeur numérique ou logique scalaire.
/ upper: une valeur numérique ou logique scalaire.
/ boundflag1: 'inclusive', 'exclusive', 'exclude-lower' ou 'exclude-upper'.
/ boundflag2: 'inclusive', 'exclusive', 'exclude-lower' ou 'exclude-upper'.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeInRange]; vérifie que la valeur se situe dans la plage spécifiée ou renvoie une erreur.

 La seule combinaison valide des indicateurs est#strong[exclude-lower]; avec #strong[exclude-upper];.


== Exemple

``````matlab
mustBeInRange(3, 2, 4)
``````


== Voir aussi

#nlink(<validators:mustBeMember>)[mustBeMember];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
