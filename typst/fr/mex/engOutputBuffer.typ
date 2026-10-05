#import "nelson_help.typ": *

= engOutputBuffer <mex:engOutputBuffer>

Spécifie le tampon de caractères pour la sortie de Nelson

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("int engOutputBuffer(Engine *ep, char *p, int n);");

== Argument d'entrée

/ Engine \*ep: poignée du moteur Nelson.
/ char \*p: Pointeur vers un tampon de caractères.
/ int n: Longueur du tampon.

== Argument de sortie

/ int: renvoie 1 si la session du moteur est fermée ou invalide. Sinon, renvoie 0.

== Description

Specify char buffer for Nelson output.

 To turn off output buffering in C, use:#strong[engOutputBuffer(ep, NULL, 0);];


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
