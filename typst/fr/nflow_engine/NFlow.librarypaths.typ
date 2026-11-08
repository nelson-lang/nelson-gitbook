#import "nelson_help.typ": *

= NFlow.librarypaths <nflow_engine:NFlow.librarypaths>

Renvoie les répertoires de recherche de bibliothèques de blocs nflow.

== Syntaxe

- #raw("paths = NFlow.librarypaths()");

== Argument de sortie

/ paths: les répertoires de recherche nflow actuels, un tableau de cellules de chaînes de caractères.

== Description

#strong[NFlow.librarypaths]; renvoie les répertoires actuellement parcourus pour trouver des bibliothèques de blocs nflow externes. La liste est celle partagée par #strong[sim];, la génération de code et l'éditeur ; elle se modifie avec #strong[NFlow.addlibrarypath]; et #strong[NFlow.rmlibrarypath];.


== Exemple

Liste les répertoires de recherche enregistrés.

``````matlab
NFlow.librarypaths()
``````


== Voir aussi

#nlink(<nflow_engine:NFlow.addlibrarypath>)[NFlow.addlibrarypath];, #nlink(<nflow_engine:NFlow.rmlibrarypath>)[NFlow.rmlibrarypath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
