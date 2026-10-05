#import "nelson_help.typ": *

= mexext <mex:mexext>

Extension de nom de fichier binaire MEX

== Syntaxe

- #raw("ext = mexext()");
- #raw("extlist = mexext('all')");

== Description

#strong[ext \= mexext()]; renvoie l'extension de nom de fichier pour la plateforme courante.

 #strong[extlist \= mexext('all')]; renvoie les extensions pour toutes les plateformes.

 Un fichier mex est un type de fichier qui fournit une interface entre Octave ou le logiciel commercial de référence et des fonctions écrites en C ou C++.

 Nelson dispose également de sa propre API C++ pour gérer plus facilement les objets internes de Nelson.

 

 Nelson ne peut pas charger des mex générés par d'autres logiciels,#strong[MAIS]; vous pouvez facilement les reconstruire pour chaque cible logicielle.

 Les mex générés par Nelson ont une extension de fichier commençant par#strong[.nex];


== Exemple

``````matlab
ext = mexext()
extlist = mexext('all')
``````


== Voir aussi

#nlink(<mex:mex>)[mex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
