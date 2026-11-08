#import "nelson_help.typ": *

= NFlow.addlibrarypath <nflow_engine:NFlow.addlibrarypath>

Ajoute un répertoire de recherche de bibliothèques de blocs nflow.

== Syntaxe

- #raw("NFlow.addlibrarypath(folder)");
- #raw("paths = NFlow.addlibrarypath(folder)");

== Argument d'entrée

/ folder: un répertoire contenant un ou plusieurs sous-dossiers de bibliothèque, chacun avec un #strong[library.json]; et sa bibliothèque native.

== Argument de sortie

/ paths: la liste mise à jour des répertoires de recherche, un tableau de cellules de chaînes de caractères.

== Description

#strong[NFlow.addlibrarypath]; ajoute #strong[folder]; aux répertoires de recherche de bibliothèques de blocs nflow et le parcourt. Chaque sous-dossier contenant un #strong[library.json]; à côté de sa bibliothèque native est chargé, de sorte que ses blocs deviennent disponibles pour #strong[sim];, la génération de code et l'éditeur sans redémarrer Nelson.

 Ajouter un répertoire déjà enregistré n'a aucun effet. Une erreur est levée lorsque #strong[folder]; n'existe pas.


== Exemple

Compile le plugin d'exemple cumprod et enregistre son dossier de bibliothèques.

``````matlab
run([modulepath('nflow_gui'), '/examples/libraries/cumprod/builder.m']);
NFlow.addlibrarypath([modulepath('nflow_gui'), '/examples/libraries']);
NFlow.librarypaths()
``````


== Voir aussi

#nlink(<nflow_engine:NFlow.librarypaths>)[NFlow.librarypaths];, #nlink(<nflow_engine:NFlow.rmlibrarypath>)[NFlow.rmlibrarypath];, #nlink(<nflow_engine:sim>)[sim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
