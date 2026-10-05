#import "../../nelson_help.typ": *

= imboxfilt <image_processing:1_image_basics.3_filtering_edges.imboxfilt>

Applique un filtrage par moyenne locale.

== Syntaxe

- #raw("B = imboxfilt(A)");
- #raw("B = imboxfilt(A, filterSize)");
- #raw("B = imboxfilt(__, 'Padding', pad)");
- #raw("B = imboxfilt(__, 'NormalizationFactor', factor)");

== Argument d'entrée

/ A: Image 2-D numerique\/logique ou image RGB.
/ filterSize: Scalaire entier positif ou vecteur a deux elements. La valeur par defaut est \[3 3\].
/ 'Padding': Methode de padding ou valeur scalaire finie de remplissage transmise a imfilter. La valeur par defaut est replicate.
/ 'NormalizationFactor': Scalaire numerique fini multiplie par le noyau de moyenne locale. La valeur par defaut calcule une moyenne locale.

== Argument de sortie

/ B: Image filtree par moyenne locale.

== Description

Applique un filtrage par moyenne locale. FilterSize doit contenir des entiers positifs. Par defaut, le filtre calcule une moyenne locale avec un padding par replication. Utiliser NormalizationFactor egal a 1 pour calculer des sommes locales.


== Exemples

Appliquer un filtrage par moyenne locale

``````matlab
I=peaks(64);
J=imboxfilt(I,[5 5]);
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Box filtered');
``````


#align(center)[#image("imboxfilt_1.png")]
Calculer des sommes locales avec padding nul

``````matlab
A = [1 2; 3 4];
S = imboxfilt(A, [2 2], 'Padding', 0, 'NormalizationFactor', 1)
``````


== Voir aussi

#nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt];, #nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
