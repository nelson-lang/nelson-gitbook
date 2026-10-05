#import "nelson_help.typ": *

= lin2mu <audio:lin2mu>

Convertir les données audio d'un signal linéaire vers mu-law.

== Syntaxe

- #raw("mu = lin2mu(y)");

== Argument d'entrée

/ y: signal linéaire avec -1 ≤ y ≤ 1.

== Argument de sortie

/ mu: signaux audio encodés en mu-law 8 bits, avec 0 ≤ mu ≤ 255.

== Description

#strong[mu \= lin2mu(y)]; convertit les données audio du linéaire vers mu-law.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/%CE%9C-law\_algorithm

== Exemple

``````matlab
mu = lin2mu([-1:0.5:1])
``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:mu2lin>)[mu2lin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
