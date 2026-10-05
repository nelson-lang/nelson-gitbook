#import "nelson_help.typ": *

= cancel <handle:cancel>

Annuler un objet annulable.

== Syntaxe

- #raw("cancel(obj)");

== Argument d'entrée

/ obj: objet prenant en charge l'annulation, par exemple un objet d'evaluation asynchrone.

== Description

cancel demande l'annulation d'un objet qui prend en charge un travail asynchrone. Le type de l'objet fournit le comportement concret.

 Si le premier argument n'implemente pas l'annulation, Nelson signale que la fonction n'est pas implementee pour ce type.


== Fonction(s) utilisée(s)

cancel

== Exemple

Annuler une evaluation asynchrone.

``````matlab
f = parfeval(@pause, 0, 10);
cancel(f)
``````


== Voir aussi

#nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:afterEach>)[afterEach];, #nlink(<parallel:afterAll>)[afterAll];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
