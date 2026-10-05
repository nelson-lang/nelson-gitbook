#import "nelson_help.typ": *

= engOpenSingleUse <mex:engOpenSingleUse>

Démarre une session du moteur Nelson pour un usage unique et non partagé.

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("Engine *engOpenSingleUse(const char *startcmd, void *dcom, int *retstatus);");

== Argument d'entrée

/ startcmd: Commande de démarrage de Nelson (NULL).
/ dcom: doit être NULL.

== Argument de sortie

/ Engine: poignée du moteur Nelson ou NULL.
/ retstatus: statut ; cause possible de l'échec.

== Description

engOpenSingleUse start Nelson engine session for single and nonshared use.


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engClose>)[engClose];, #nlink(<mex:engOpen>)[engOpen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
