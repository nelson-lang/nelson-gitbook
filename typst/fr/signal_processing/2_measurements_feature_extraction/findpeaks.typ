#import "../nelson_help.typ": *

= findpeaks <signal_processing:2_measurements_feature_extraction.findpeaks>

localiser les maxima locaux (pics) dans un signal 1-D.

== Syntaxe

- #raw("[pks, locs, widths, prominences] = findpeaks(Y)");
- #raw("[pks, locs, widths, prominences] = findpeaks(Y, Fs, ...)");
- #raw("[pks, locs, widths, prominences] = findpeaks(Y, X, ...)");

== Argument d'entrée

/ Y: vecteur : signal d'entrée (ligne ou colonne)
/ Fs: scalaire : fréquence d'échantillonnage (optionnel). Si fourni, les emplacements des pics sont retournés en unités de temps.
/ X: vecteur : valeurs x correspondant à Y (optionnel). Doit avoir la même longueur que Y.
/ Nom\/Valeur paires: options nom\/valeur :

- #strong[MinPeakHeight];: scalaire numérique, défaut -Inf
- #strong[MinPeakProminence];: scalaire numérique \>\= 0, défaut 0
- #strong[Threshold];: scalaire numérique \>\= 0 (distance verticale minimale par rapport à la ligne de base voisine), défaut 0
- #strong[MinPeakWidth];: scalaire numérique \>\= 0, défaut 0
- #strong[MaxPeakWidth];: scalaire numérique \>\= 0, défaut Inf
- #strong[MinPeakDistance];: scalaire numérique \>\= 0 (dans les mêmes unités que X), défaut 0
- #strong[WidthReference];: 'halfprom' (par défaut) ou 'halfheight'
- #strong[SortStr];: 'none' (par défaut), 'ascend' ou 'descend'
- #strong[NPeaks];: entier positif, nombre maximum de pics à retourner (par défaut Inf)
- #strong[Annotate];: 'peaks' (par défaut) ou 'extents' (contrôle l'annotation du tracé)

== Argument de sortie

/ pks: amplitudes des pics
/ locs: emplacements des pics (valeurs x ou indices)
/ widths: largeurs des pics mesurées à la référence de largeur spécifiée
/ prominences: prominence de chaque pic

== Description

#strong[findpeaks]; localise les maxima locaux (pics) dans un signal unidimensionnel Y.

 L'algorithme détecte les pics candidats, les filtre par hauteur et seuil, calcule la prominence et les largeurs, impose une séparation minimale, et retourne les sorties demandées.

 Lorsqu'aucune sortie n'est demandée, la fonction trace le signal et marque les pics détectés.


== Exemples

Trouver des pics dans un signal simple

``````matlab

t = 0:0.01:2*pi;
y = sin(5*t) + 0.2*randn(size(t));
[pks, locs] = findpeaks(y, t, 'MinPeakProminence', 0.3);

``````

Retourner les largeurs et les prominences

``````matlab

[pks, locs, widths, proms] = findpeaks(y, 'MinPeakHeight', 0);

``````


== Voir aussi

#nlink(<data_analysis:max>)[max];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
  [2.0.0], [exemples de documentation executables en CLI],
)

// Auteur: Allan CORNET
