#import "../../nelson_help.typ": *

= detectHarrisFeatures <image_processing:2_image_analysis.9_feature_detection.detectHarrisFeatures>

Detecte les coins de Harris.

== Syntaxe

- #raw("points = detectHarrisFeatures(I)");
- #raw("points = detectHarrisFeatures(I, Name, Value)");

== Argument d'entrée

/ I: Image d'entree en niveaux de gris ou RGB.

== Argument de sortie

/ points: Structure avec les champs Location, Metric et Count.

== Description

detectHarrisFeatures calcule une metrique de coins Harris, conserve les maxima locaux, les trie par force de metrique et retourne leurs coordonnees image. Les options prises en charge sont MinQuality, FilterSize, SensitivityFactor et ROI.


== Exemple

Detecter les coins dans une image carree

``````matlab
I=zeros(64,64); I(18:46,18:46)=1;
points=detectHarrisFeatures(I,'MinQuality',0.05);
figure; imagesc(I); axis image; hold on;
plot(points.Location(:,1),points.Location(:,2),'r+'); title('Points Harris');
``````


#align(center)[#image("detectHarrisFeatures_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.9_feature_detection.cornermetric>)[cornermetric];, #nlink(<image_processing:2_image_analysis.9_feature_detection.detectFASTFeatures>)[detectFASTFeatures];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
