#import "nelson_help.typ": *

= engOpen <mex:engOpen>

Démarre un processus Nelson

== Syntaxe

- #raw("#include \"engine.h\"");
- #raw("Engine *engOpen(const char *startcmd);");

== Argument d'entrée

/ startcmd: Commande de démarrage de Nelson (NULL).

== Argument de sortie

/ Engine: poignée du moteur Nelson ou NULL.

== Description

#strong[engOpen]; démarre un processus Nelson afin d'utiliser Nelson comme moteur de calcul.

 Le chemin des bibliothèques doit contenir le chemin de Nelson pour trouver les bibliothèques de Nelson à l'exécution.

 Définissez la valeur sur le chemin renvoyé par la commande Nelson suivante :

 #strong[res]; \= modulepath('nelson', 'builtin')

 sur Linux : export LD\_LIBRARY\_PATH\=\$LD\_LIBRARY\_PATH:#strong[res];

 export PATH\=\$PATH:#strong[res];

 sur macOS : export DYLIB\_LIBRARY\_PATH\=\$DYLIB\_LIBRARY\_PATH:#strong[res];

 export PATH\=\$PATH:#strong[res];

 sur Windows : set PATH\=%PATH%;#strong[res];


== Exemple

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== Voir aussi

#nlink(<mex:mex>)[mex];, #nlink(<mex:engClose>)[engClose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
