#import "../nelson_help.typ": *

= lognfit <statistics:2_probability_distributions.lognfit>

Estimations des parametres lognormaux

== Syntaxe

- #raw("phat = lognfit(x)");
- #raw("[phat, pci] = lognfit(x, alpha)");
- #raw("[phat, pci] = lognfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = lognfit(x, alpha, censoring, freq, options)");

== Argument d'entrée

/ x: vecteur ou matrice reel positif fini non vide : donnees d'echantillon.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.
/ censoring: tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences des observations.
/ options: structure scalaire : options d'ajustement. MaxIter et TolX sont utilises s'ils sont fournis.

== Argument de sortie

/ phat: tableau : estimations des parametres mu et sigma.
/ pci: tableau : intervalles de confiance des estimations.

== Description

#strong[lognfit]; estime les parametres de la distribution lognormale.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = lognfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.lognlike>)[lognlike];, #nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.logncdf>)[logncdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
