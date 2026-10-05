#import "nelson_help.typ": *

= engEvalString <mex:engEvalString>

Évalue une expression fournie sous forme de chaîne dans la portée de base

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("int engEvalString(Engine *ep, const char *string);");

== Argument d'entrée

/ Engine \*ep: poignée du moteur Nelson.
/ const char \*string: Expression à évaluer.

== Argument de sortie

/ int: renvoie 1 si la session du moteur est fermée ou invalide. Sinon, renvoie 0.

== Description

Évalue l'expression fournie sous forme de chaîne dans la portée de base.


== Exemple

``````matlab
edit([modulepath('mex'), '/examples/mex_engine_demo_2.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engPutVariable>)[engPutVariable];, #nlink(<mex:engGetVariable>)[engGetVariable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
