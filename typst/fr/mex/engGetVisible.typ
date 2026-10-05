#import "nelson_help.typ": *

= engGetVisible <mex:engGetVisible>

Détermine la visibilité de la session du moteur Nelson

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("int engGetVisible(Engine *ep, bool *value);");

== Argument d'entrée

/ Engine \*ep: poignée du moteur Nelson.

== Argument de sortie

/ int: 0 en cas de succès ou 1 si une erreur survient.
/ bool \*: true (visible) ou false (minimisé).

== Description

Détermine la visibilité de la session du moteur Nelson


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engSetVisible>)[engSetVisible];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
