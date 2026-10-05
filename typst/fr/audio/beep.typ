#import "nelson_help.typ": *

= beep <audio:beep>

Produit un son de bip.

== Syntaxe

- #raw("beep");
- #raw("beep(str)");
- #raw("str = beep");

== Argument d'entrée

/ str: une chaîne : 'on' ou 'off'.

== Argument de sortie

/ str: une chaîne : 'on' ou 'off'.

== Description

#strong[beep]; produit un son de bip système.


== Exemple

``````matlab
beep('off')
beep
beep('on')
beep
s = beep
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
