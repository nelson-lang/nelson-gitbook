#import "../nelson_help.typ": *

= hanning <signal_processing:5_spectral_analysis.hanning>

Fonction de compatibilite pour la fenetre de Hann.

== Syntaxe

- #raw("w = hanning(n)");
- #raw("w = hanning(n, option)");

== Argument d'entrée

/ n: Longueur de la fenetre.
/ option: 'symmetric' ou 'periodic'.

== Argument de sortie

/ w: Vecteur colonne contenant la fenetre.

== Description

#strong[hanning]; retourne la meme fenetre que #strong[hann];.


== Exemple

``````matlab
w = hanning(6, 'periodic')
``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.hann>)[hann];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
