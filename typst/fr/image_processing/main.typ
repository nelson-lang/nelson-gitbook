#import "nelson_help.typ": *

= Fonctions de traitement d'image

Le module Image Processing fournit des operations pour manipuler les images et volumes, notamment conversion de type, conversion couleur, ajustement du contraste, filtrage, morphologie, composants connexes, mesures de regions, transformations geometriques, redimensionnement, rotation, detection de points caracteristiques, bases du traitement 3-D et recalage d'images.

 Les pages d'aide sont regroupees en chapitres thematiques : bases de l'image, analyse et segmentation d'images, puis geometrie, recalage et traitement 3-D.

== Bases de l'image

Fonctions pour classes d'images, espaces couleur, ajustement du contraste, seuillage, filtrage, padding et detection de contours.

=== Types d'image et couleur

Fonctions pour la conversion de type d'image, la conversion d'espace couleur et la conversion d'images indexees.

==== Functions

- #nlink(<image_processing:1_image_basics.1_image_types_color.hsv2rgb>)[hsv2rgb]: Convertit des valeurs couleur HSV en valeurs RGB.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double]: Convertit une image en précision double.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2gray>)[im2gray]: Convertit une image RGB en niveaux de gris et conserve les images deja grises.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2single>)[im2single]: Convertit une image en precision simple.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16]: Convertit une image en entier non signe 16 bits.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint8>)[im2uint8]: Convertit une image en entier non signe 8 bits.
- #nlink(<image_processing:1_image_basics.1_image_types_color.ind2gray>)[ind2gray]: Convertit une image indexee en niveaux de gris avec une palette.
- #nlink(<image_processing:1_image_basics.1_image_types_color.ind2rgb>)[ind2rgb]: Convertit une image indexee en RGB avec une palette.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2gray>)[rgb2gray]: Convertit une image RGB en niveaux de gris.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2hsv>)[rgb2hsv]: Convertit des valeurs couleur RGB en valeurs HSV.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2ind>)[rgb2ind]: Convertit une image RGB en image indexee.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2ycbcr>)[rgb2ycbcr]: Convertit des valeurs couleur RGB en valeurs YCbCr.
- #nlink(<image_processing:1_image_basics.1_image_types_color.ycbcr2rgb>)[ycbcr2rgb]: Convertit des valeurs couleur YCbCr en valeurs RGB.

=== Contraste et seuillage

Fonctions pour l'ajustement du contraste, le choix de seuil, l'analyse d'histogramme et la creation d'images binaires.

==== Functions

- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.adaptthresh>)[adaptthresh]: Calcule un seuil adaptatif d image.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh]: Calcule un seuil global par la methode d Otsu.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imadjust>)[imadjust]: Ajuste les intensites d une image.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imbinarize>)[imbinarize]: Binarise une image avec un seuil.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imcomplement>)[imcomplement]: Calcule le complement des valeurs d une image.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imhist>)[imhist]: Calcule les effectifs de l histogramme d image.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.stretchlim>)[stretchlim]: Determine les limites pour etirer le contraste.

=== Filtrage et contours

Fonctions pour le filtrage spatial, le filtrage gaussien ou median, le remplissage, les noyaux de filtre et la detection de contours.

==== Functions

- #nlink(<image_processing:1_image_basics.3_filtering_edges.edge>)[edge]: Detecte les contours dans une image en niveaux de gris.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.fspecial>)[fspecial]: Cree des filtres image 2D predefinis.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.imboxfilt>)[imboxfilt]: Applique un filtrage par moyenne locale.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter]: Filtre une image avec un noyau 2D.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt]: Applique un filtrage gaussien a une image.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.medfilt2>)[medfilt2]: Applique un filtrage median 2D.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.padarray>)[padarray]: Ajoute des marges a un tableau pour le filtrage ou la morphologie.

== Analyse et segmentation d'images

Fonctions pour morphologie, composants connexes, suivi de frontieres, mesures de regions, reconstruction et segmentation.

=== Morphologie

Fonctions pour les operations morphologiques binaires et en niveaux de gris, le nettoyage d'objets, le nettoyage des bords et les elements structurants.

==== Functions

- #nlink(<image_processing:2_image_analysis.4_morphology.bwareaopen>)[bwareaopen]: Supprime les petits composants connexes d une image binaire.
- #nlink(<image_processing:2_image_analysis.4_morphology.bwmorph>)[bwmorph]: Applique des operations morphologiques aux images binaires.
- #nlink(<image_processing:2_image_analysis.4_morphology.bwperim>)[bwperim]: Trouve les pixels de perimetre des objets binaires.
- #nlink(<image_processing:2_image_analysis.4_morphology.imbothat>)[imbothat]: Applique un filtrage chapeau bas.
- #nlink(<image_processing:2_image_analysis.4_morphology.imclearborder>)[imclearborder]: Supprime les composants binaires connectes au bord de l'image.
- #nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose]: Ferme une image par dilatation puis erosion.
- #nlink(<image_processing:2_image_analysis.4_morphology.imdilate>)[imdilate]: Dilate une image ou un volume binaire ou en niveaux de gris.
- #nlink(<image_processing:2_image_analysis.4_morphology.imerode>)[imerode]: Erode une image ou un volume binaire ou en niveaux de gris.
- #nlink(<image_processing:2_image_analysis.4_morphology.imfill>)[imfill]: Remplit les trous dans les images binaires.
- #nlink(<image_processing:2_image_analysis.4_morphology.imopen>)[imopen]: Ouvre une image par erosion puis dilatation.
- #nlink(<image_processing:2_image_analysis.4_morphology.imtophat>)[imtophat]: Applique un filtrage chapeau haut.
- #nlink(<image_processing:2_image_analysis.4_morphology.strel>)[strel]: Cree un element structurant.

=== Regions et frontieres

Fonctions pour les composants connexes, les etiquettes, les mesures de regions, la selection et le suivi de frontieres.

==== Functions

- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwboundaries>)[bwboundaries]: Trouve les pixels de frontiere des regions binaires.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp]: Trouver les composantes connexes dans une image ou un volume binaire.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwlabel>)[bwlabel]: Etiquette les composants connexes d une image binaire.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwselect>)[bwselect]: Selectionne des objets binaires connexes.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwtraceboundary>)[bwtraceboundary]: Trace les pixels de frontiere d un objet binaire.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.labelmatrix>)[labelmatrix]: Cree une matrice d etiquettes depuis des composants connexes.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.regionprops>)[regionprops]: Mesure les proprietes de regions d image.

=== Segmentation

Fonctions pour segmenter les images avec la croissance de region, les contours actifs, la reconstruction morphologique, les h-minima\/maxima, les extrema regionaux, les minima imposes et les transformations watershed.

==== Functions

- #nlink(<image_processing:2_image_analysis.7_segmentation.activecontour>)[activecontour]: Segmente une image depuis un masque initial de contour.
- #nlink(<image_processing:2_image_analysis.7_segmentation.grayconnected>)[grayconnected]: Selectionne une region en niveaux de gris connectee depuis un pixel germe.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imextendedmax>)[imextendedmax]: Trouve les maxima etendus dans une image 2-D.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imextendedmin>)[imextendedmin]: Trouve les minima etendus dans une image 2-D.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imhmax>)[imhmax]: Supprime les maxima peu profonds avec la transformation h-maxima.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imhmin>)[imhmin]: Supprime les minima peu profonds avec la transformation h-minima.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imimposemin>)[imimposemin]: Impose des minima regionaux aux pixels marqueurs.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imreconstruct>)[imreconstruct]: Effectue une reconstruction morphologique par dilatation.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmax>)[imregionalmax]: Trouve les maxima regionaux dans une image 2-D.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmin>)[imregionalmin]: Trouve les minima regionaux dans une image 2-D.
- #nlink(<image_processing:2_image_analysis.7_segmentation.watershed>)[watershed]: Calcule les regions watershed d une image 2-D ou d un volume 3-D.

=== Detection de points caracteristiques

Fonctions pour les metriques de coins et la detection de points caracteristiques locaux.

==== Functions

- #nlink(<image_processing:2_image_analysis.9_feature_detection.cornermetric>)[cornermetric]: Calcule une metrique de force de coin.
- #nlink(<image_processing:2_image_analysis.9_feature_detection.detectFASTFeatures>)[detectFASTFeatures]: Detecte les coins FAST.
- #nlink(<image_processing:2_image_analysis.9_feature_detection.detectHarrisFeatures>)[detectHarrisFeatures]: Detecte les coins de Harris.

== Geometrie, recalage et 3-D

Fonctions pour transformations geometriques, references spatiales, recalage d'images, filtrage volumique, redimensionnement et mesures 3-D.

=== Transformations geometriques

Fonctions et objets pour le recadrage, le redimensionnement, la rotation, la translation, le referencement spatial et les transformations geometriques dans les workflows 2-D et les bases 3-D.

==== Functions

- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d]: Cree une structure de transformation affine 2-D.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d]: Cree une structure de transformation affine 3-D.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.fitgeotrans>)[fitgeotrans]: Ajuste une transformation geometrique 2-D depuis des points de controle.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imcrop>)[imcrop]: Rogne une image avec un rectangle.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref2d>)[imref2d]: Cree une structure de reference spatiale 2-D.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d]: Cree une structure de reference spatiale 3-D.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregconfig>)[imregconfig]: Cree des structures d'optimiseur et de metrique pour le recalage d'images.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregcorr>)[imregcorr]: Estime une transformation de recalage 2-D par correlation de phase.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregister>)[imregister]: Recale une image mobile sur une image fixe.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregtform>)[imregtform]: Estime une transformation de recalage 2-D a partir d'images.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imresize>)[imresize]: Redimensionne une image par échelle ou taille de sortie
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imrotate>)[imrotate]: Fait pivoter une image d'un angle spécifié
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imtranslate>)[imtranslate]: Translate une image en 2D.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp]: Transforme une image ou un volume avec une matrice numerique.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.intrinsicToWorld>)[intrinsicToWorld]: Convertit des coordonnees intrinseques en coordonnees monde.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d]: Cree une structure de transformation projective 2-D.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.sizesMatch>)[sizesMatch]: Determine si une reference spatiale correspond a une taille d'image.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsForward>)[transformPointsForward]: Applique une transformation geometrique directe a des points.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsInverse>)[transformPointsInverse]: Applique une transformation geometrique inverse a des points.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.worldToIntrinsic>)[worldToIntrinsic]: Convertit des coordonnees monde en coordonnees intrinseques.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.worldToSubscript>)[worldToSubscript]: Convertit des coordonnees monde en indices d'image.

=== Volumes 3-D

Fonctions de filtrage et traitement de donnees d'image volumetriques.

==== Functions

- #nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.imgaussfilt3>)[imgaussfilt3]: Filtre un volume 3-D avec un noyau gaussien.
- #nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.imresize3>)[imresize3]: Redimensionner un volume 3-D
- #nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.regionprops3>)[regionprops3]: Mesurer les proprietes de regions de volumes 3-D

=== Recalage d'images

Guides et points d'entree pour aligner des images, estimer des transformations de recalage et appliquer les sorties recalees.

==== Functions

- #nlink(<image_processing:3_geometry_registration_3d.9a_image_registration.image_registration>)[image\_registration]: Vue d'ensemble du recalage d'images.


#nested[
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/hsv2rgb.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2double.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2gray.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2single.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2uint16.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2uint8.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/ind2gray.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/ind2rgb.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2gray.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2hsv.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2ind.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2ycbcr.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/ycbcr2rgb.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/adaptthresh.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/graythresh.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imadjust.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imbinarize.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imcomplement.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imhist.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/stretchlim.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/edge.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/fspecial.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/imboxfilt.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/imfilter.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/imgaussfilt.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/medfilt2.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/padarray.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/bwareaopen.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/bwmorph.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/bwperim.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imbothat.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imclearborder.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imclose.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imdilate.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imerode.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imfill.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imopen.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imtophat.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/strel.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwboundaries.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwconncomp.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwlabel.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwselect.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwtraceboundary.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/labelmatrix.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/regionprops.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/activecontour.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/grayconnected.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imextendedmax.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imextendedmin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imhmax.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imhmin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imimposemin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imreconstruct.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imregionalmax.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imregionalmin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/watershed.typ"
#pagebreak(weak: true)
#include "2_image_analysis/9_feature_detection/cornermetric.typ"
#pagebreak(weak: true)
#include "2_image_analysis/9_feature_detection/detectFASTFeatures.typ"
#pagebreak(weak: true)
#include "2_image_analysis/9_feature_detection/detectHarrisFeatures.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/affine2d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/affine3d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/fitgeotrans.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imcrop.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imref2d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imref3d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregconfig.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregcorr.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregister.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregtform.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imresize.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imrotate.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imtranslate.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imwarp.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/intrinsicToWorld.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/projective2d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/sizesMatch.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/transformPointsForward.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/transformPointsInverse.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/worldToIntrinsic.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/worldToSubscript.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/8_volumes_3d/imgaussfilt3.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/8_volumes_3d/imresize3.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/8_volumes_3d/regionprops3.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/9a_image_registration/image_registration.typ"
]
