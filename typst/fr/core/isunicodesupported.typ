#import "nelson_help.typ": *

= isunicodesupported <core:isunicodesupported>

Indique si Unicode est supporté.

== Syntaxe

- #raw("tf = isunicodesupported()");

== Argument de sortie

/ tf: un logique : vrai ou faux.

== Description

Retourne vrai si l'environnement et la plateforme prennent en charge Unicode pour les chaînes de caractères.


== Exemple

``````matlab
isunicodesupported()
``````


== Voir aussi

#nlink(<engine:getnelsonmode>)[getnelsonmode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
