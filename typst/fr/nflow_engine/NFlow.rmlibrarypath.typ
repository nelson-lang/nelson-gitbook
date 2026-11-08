#import "nelson_help.typ": *

= NFlow.rmlibrarypath <nflow_engine:NFlow.rmlibrarypath>

Retire un répertoire de recherche de bibliothèques de blocs nflow.

== Syntaxe

- #raw("NFlow.rmlibrarypath(folder)");
- #raw("paths = NFlow.rmlibrarypath(folder)");

== Argument d'entrée

/ folder: un répertoire précédemment ajouté avec #strong[NFlow.addlibrarypath];.

== Argument de sortie

/ paths: la liste mise à jour des répertoires de recherche, un tableau de cellules de chaînes de caractères.

== Description

#strong[NFlow.rmlibrarypath]; retire #strong[folder]; des répertoires de recherche de bibliothèques de blocs nflow et parcourt de nouveau les répertoires restants. Retirer un répertoire non enregistré n'a aucun effet.


== Exemple

Enregistre puis retire un dossier de bibliothèques.

``````matlab
folder = [modulepath('nflow_gui'), '/examples/libraries'];
NFlow.addlibrarypath(folder);
NFlow.rmlibrarypath(folder)
``````


== Voir aussi

#nlink(<nflow_engine:NFlow.addlibrarypath>)[NFlow.addlibrarypath];, #nlink(<nflow_engine:NFlow.librarypaths>)[NFlow.librarypaths];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
