#import "nelson_help.typ": *

= global <memory_manager:global>

Définit une variable globale.

== Syntaxe

- #raw("global variable_name");
- #raw("global(variable_name)");
- #raw("global variable_name1 ... variable_nameN");

== Argument d'entrée

/ variable\_name: une chaîne : nom de variable valide.

== Description

#strong[global]; déclare une variable comme globale : elle permet d'affecter une valeur à une variable dans une portée de variables spécifiée.


== Exemple

``````matlab
function myfun()
global y;
y = 1;
end

myfun()
who
global y
who
disp(y)
who
clear global y
disp(y)
``````


== Voir aussi

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
