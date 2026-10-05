#import "nelson_help.typ": *

= i <constructors_functions:i>

Nombre imaginaire pur.

== Syntaxe

- #raw("i");
- #raw("0i");
- #raw("3*i");

== Description

#strong[i];, ou #strong[j]; retourne un nombre imaginaire pur équivalent à sqrt(-1).

 Attention, i et j peuvent être redéfinis et utilisés comme variables ordinaires, dans ce cas, vous devez utiliser clear pour restaurer le comportement par défaut.


== Exemples

``````matlab
A = 3i
``````

``````matlab
A = single(3i)
``````

``````matlab
i = 33;
disp(i);
clear('i');
disp(i);
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.complex>)[complex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
