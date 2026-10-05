#import "nelson_help.typ": *

= mu2lin <audio:mu2lin>

Convertir les données audio de mu-law vers un signal linéaire.

== Syntaxe

- #raw("y = mu2lin(mu)");

== Argument d'entrée

/ mu: signaux audio encodés en mu-law 8 bits, avec 0 ≤ mu ≤ 255.

== Argument de sortie

/ y: signal linéaire.

== Description

#strong[y \= mu2lin(mu)]; convertit les données audio de mu-law vers linéaire.


== Bibliographie

"A New Digital Technique for Implementation of Any Continuous PCM Companding Law," Villeret, Michel, et al. 1973 IEEE Int. Conf. on Communications, Vol 1, 1973, pg. 11.12-11.17.

== Exemple

``````matlab
l = mu2lin([0:20:255])
``````


== Voir aussi

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:lin2mu>)[lin2mu];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
