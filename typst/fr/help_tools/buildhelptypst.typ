#import "nelson_help.typ": *

= buildhelptypst <help_tools:buildhelptypst>

Génère l'aide des modules de Nelson en sources Typst.

== Syntaxe

- #raw("buildhelptypst(dirdest)");
- #raw("buildhelptypst(dirdest, module_name)");

== Argument d'entrée

/ dirdest: une chaîne : répertoire de destination.
/ module\_name: une chaîne : nom du module (le module doit être chargé).

== Description

#strong[buildhelptypst]; génère l'aide en sources Typst, prêtes à être compilées en PDF.

 Pour chaque langue disponible, les pages d'un module sont écrites dans #raw("dirdest/<lang>/<module>/"); avec un document racine #raw("main.typ"); (voir #nlink(<help_tools:xmldoctotypst>)[xmldoctotypst];). Le document racine #raw("dirdest/<lang>/main.typ"); applique le style de page #raw("nelson-style"); de #raw("nelson_help.typ"); et inclut, dans l'ordre : les modules, puis une table des matières.

 Avec un seul argument, tout le manuel est généré : la page d'accueil, le guide de démarrage, les changelogs et les licences (pages markdown du module #raw("main");, converties en Typst) encadrent les modules, comme dans le manuel markdown produit par #nlink(<help_tools:buildhelpmd>)[buildhelpmd];.

 Compiler un module avec #raw("typst compile dirdest/fr/core/main.typ");, ou tout le manuel avec #raw("typst compile dirdest/fr/main.typ");. Les fragments LaTeX des pages sont composés avec le paquet Typst #raw("mitex");, téléchargé au premier usage par le compilateur typst.


== Exemple

``````matlab
buildhelptypst(tempdir(), 'core');
dir([tempdir(), 'fr/core'])
``````


== Voir aussi

#nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpmd>)[buildhelpmd];, #nlink(<help_tools:xmldoctotypst>)[xmldoctotypst];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
