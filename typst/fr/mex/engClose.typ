#import "nelson_help.typ": *

= engClose <mex:engClose>

Ferme une session du moteur Nelson

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("int engClose(Engine *ep);");

== Argument d'entrée

/ Engine \*ep: poignée du moteur Nelson.

== Argument de sortie

/ int: 0 en cas de succès et 1 en cas d'échec.

== Description

engClose ferme la session du moteur et termine la connexion.


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engOpen>)[engOpen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
