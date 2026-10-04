# Fonctions de traitement d'image

Le module Image Processing fournit des operations pour manipuler les images et volumes, notamment conversion de type, conversion couleur, ajustement du contraste, filtrage, morphologie, composants connexes, mesures de regions, transformations geometriques, redimensionnement, rotation, detection de points caracteristiques, bases du traitement 3-D et recalage d'images.

Les pages d'aide sont regroupees en chapitres thematiques : bases de l'image, analyse et segmentation d'images, puis geometrie, recalage et traitement 3-D.

## Bases de l'image

Fonctions pour classes d'images, espaces couleur, ajustement du contraste, seuillage, filtrage, padding et detection de contours.

### Types d'image et couleur

Fonctions pour la conversion de type d'image, la conversion d'espace couleur et la conversion d'images indexees.

#### Functions

- [hsv2rgb](1_image_basics/1_image_types_color/hsv2rgb.md) - Convertit des valeurs couleur HSV en valeurs RGB.
- [im2double](1_image_basics/1_image_types_color/im2double.md) - Convertit une image en précision double.
- [im2gray](1_image_basics/1_image_types_color/im2gray.md) - Convertit une image RGB en niveaux de gris et conserve les images deja grises.
- [im2single](1_image_basics/1_image_types_color/im2single.md) - Convertit une image en precision simple.
- [im2uint16](1_image_basics/1_image_types_color/im2uint16.md) - Convertit une image en entier non signe 16 bits.
- [im2uint8](1_image_basics/1_image_types_color/im2uint8.md) - Convertit une image en entier non signe 8 bits.
- [ind2gray](1_image_basics/1_image_types_color/ind2gray.md) - Convertit une image indexee en niveaux de gris avec une palette.
- [ind2rgb](1_image_basics/1_image_types_color/ind2rgb.md) - Convertit une image indexee en RGB avec une palette.
- [rgb2gray](1_image_basics/1_image_types_color/rgb2gray.md) - Convertit une image RGB en niveaux de gris.
- [rgb2hsv](1_image_basics/1_image_types_color/rgb2hsv.md) - Convertit des valeurs couleur RGB en valeurs HSV.
- [rgb2ind](1_image_basics/1_image_types_color/rgb2ind.md) - Convertit une image RGB en image indexee.
- [rgb2ycbcr](1_image_basics/1_image_types_color/rgb2ycbcr.md) - Convertit des valeurs couleur RGB en valeurs YCbCr.
- [ycbcr2rgb](1_image_basics/1_image_types_color/ycbcr2rgb.md) - Convertit des valeurs couleur YCbCr en valeurs RGB.

### Contraste et seuillage

Fonctions pour l'ajustement du contraste, le choix de seuil, l'analyse d'histogramme et la creation d'images binaires.

#### Functions

- [adaptthresh](1_image_basics/2_contrast_thresholding/adaptthresh.md) - Calcule un seuil adaptatif d image.
- [graythresh](1_image_basics/2_contrast_thresholding/graythresh.md) - Calcule un seuil global par la methode d Otsu.
- [imadjust](1_image_basics/2_contrast_thresholding/imadjust.md) - Ajuste les intensites d une image.
- [imbinarize](1_image_basics/2_contrast_thresholding/imbinarize.md) - Binarise une image avec un seuil.
- [imcomplement](1_image_basics/2_contrast_thresholding/imcomplement.md) - Calcule le complement des valeurs d une image.
- [imhist](1_image_basics/2_contrast_thresholding/imhist.md) - Calcule les effectifs de l histogramme d image.
- [stretchlim](1_image_basics/2_contrast_thresholding/stretchlim.md) - Determine les limites pour etirer le contraste.

### Filtrage et contours

Fonctions pour le filtrage spatial, le filtrage gaussien ou median, le remplissage, les noyaux de filtre et la detection de contours.

#### Functions

- [edge](1_image_basics/3_filtering_edges/edge.md) - Detecte les contours dans une image en niveaux de gris.
- [fspecial](1_image_basics/3_filtering_edges/fspecial.md) - Cree des filtres image 2D predefinis.
- [imboxfilt](1_image_basics/3_filtering_edges/imboxfilt.md) - Applique un filtrage par moyenne locale.
- [imfilter](1_image_basics/3_filtering_edges/imfilter.md) - Filtre une image avec un noyau 2D.
- [imgaussfilt](1_image_basics/3_filtering_edges/imgaussfilt.md) - Applique un filtrage gaussien a une image.
- [medfilt2](1_image_basics/3_filtering_edges/medfilt2.md) - Applique un filtrage median 2D.
- [padarray](1_image_basics/3_filtering_edges/padarray.md) - Ajoute des marges a un tableau pour le filtrage ou la morphologie.

## Analyse et segmentation d'images

Fonctions pour morphologie, composants connexes, suivi de frontieres, mesures de regions, reconstruction et segmentation.

### Morphologie

Fonctions pour les operations morphologiques binaires et en niveaux de gris, le nettoyage d'objets, le nettoyage des bords et les elements structurants.

#### Functions

- [bwareaopen](2_image_analysis/4_morphology/bwareaopen.md) - Supprime les petits composants connexes d une image binaire.
- [bwmorph](2_image_analysis/4_morphology/bwmorph.md) - Applique des operations morphologiques aux images binaires.
- [bwperim](2_image_analysis/4_morphology/bwperim.md) - Trouve les pixels de perimetre des objets binaires.
- [imbothat](2_image_analysis/4_morphology/imbothat.md) - Applique un filtrage chapeau bas.
- [imclearborder](2_image_analysis/4_morphology/imclearborder.md) - Supprime les composants binaires connectes au bord de l'image.
- [imclose](2_image_analysis/4_morphology/imclose.md) - Ferme une image par dilatation puis erosion.
- [imdilate](2_image_analysis/4_morphology/imdilate.md) - Dilate une image ou un volume binaire ou en niveaux de gris.
- [imerode](2_image_analysis/4_morphology/imerode.md) - Erode une image ou un volume binaire ou en niveaux de gris.
- [imfill](2_image_analysis/4_morphology/imfill.md) - Remplit les trous dans les images binaires.
- [imopen](2_image_analysis/4_morphology/imopen.md) - Ouvre une image par erosion puis dilatation.
- [imtophat](2_image_analysis/4_morphology/imtophat.md) - Applique un filtrage chapeau haut.
- [strel](2_image_analysis/4_morphology/strel.md) - Cree un element structurant.

### Regions et frontieres

Fonctions pour les composants connexes, les etiquettes, les mesures de regions, la selection et le suivi de frontieres.

#### Functions

- [bwboundaries](2_image_analysis/5_regions_boundaries/bwboundaries.md) - Trouve les pixels de frontiere des regions binaires.
- [bwconncomp](2_image_analysis/5_regions_boundaries/bwconncomp.md) - Trouver les composantes connexes dans une image ou un volume binaire.
- [bwlabel](2_image_analysis/5_regions_boundaries/bwlabel.md) - Etiquette les composants connexes d une image binaire.
- [bwselect](2_image_analysis/5_regions_boundaries/bwselect.md) - Selectionne des objets binaires connexes.
- [bwtraceboundary](2_image_analysis/5_regions_boundaries/bwtraceboundary.md) - Trace les pixels de frontiere d un objet binaire.
- [labelmatrix](2_image_analysis/5_regions_boundaries/labelmatrix.md) - Cree une matrice d etiquettes depuis des composants connexes.
- [regionprops](2_image_analysis/5_regions_boundaries/regionprops.md) - Mesure les proprietes de regions d image.

### Segmentation

Fonctions pour segmenter les images avec la croissance de region, les contours actifs, la reconstruction morphologique, les h-minima/maxima, les extrema regionaux, les minima imposes et les transformations watershed.

#### Functions

- [activecontour](2_image_analysis/7_segmentation/activecontour.md) - Segmente une image depuis un masque initial de contour.
- [grayconnected](2_image_analysis/7_segmentation/grayconnected.md) - Selectionne une region en niveaux de gris connectee depuis un pixel germe.
- [imextendedmax](2_image_analysis/7_segmentation/imextendedmax.md) - Trouve les maxima etendus dans une image 2-D.
- [imextendedmin](2_image_analysis/7_segmentation/imextendedmin.md) - Trouve les minima etendus dans une image 2-D.
- [imhmax](2_image_analysis/7_segmentation/imhmax.md) - Supprime les maxima peu profonds avec la transformation h-maxima.
- [imhmin](2_image_analysis/7_segmentation/imhmin.md) - Supprime les minima peu profonds avec la transformation h-minima.
- [imimposemin](2_image_analysis/7_segmentation/imimposemin.md) - Impose des minima regionaux aux pixels marqueurs.
- [imreconstruct](2_image_analysis/7_segmentation/imreconstruct.md) - Effectue une reconstruction morphologique par dilatation.
- [imregionalmax](2_image_analysis/7_segmentation/imregionalmax.md) - Trouve les maxima regionaux dans une image 2-D.
- [imregionalmin](2_image_analysis/7_segmentation/imregionalmin.md) - Trouve les minima regionaux dans une image 2-D.
- [watershed](2_image_analysis/7_segmentation/watershed.md) - Calcule les regions watershed d une image 2-D ou d un volume 3-D.

### Detection de points caracteristiques

Fonctions pour les metriques de coins et la detection de points caracteristiques locaux.

#### Functions

- [cornermetric](2_image_analysis/9_feature_detection/cornermetric.md) - Calcule une metrique de force de coin.
- [detectFASTFeatures](2_image_analysis/9_feature_detection/detectFASTFeatures.md) - Detecte les coins FAST.
- [detectHarrisFeatures](2_image_analysis/9_feature_detection/detectHarrisFeatures.md) - Detecte les coins de Harris.

## Geometrie, recalage et 3-D

Fonctions pour transformations geometriques, references spatiales, recalage d'images, filtrage volumique, redimensionnement et mesures 3-D.

### Transformations geometriques

Fonctions et objets pour le recadrage, le redimensionnement, la rotation, la translation, le referencement spatial et les transformations geometriques dans les workflows 2-D et les bases 3-D.

#### Functions

- [affine2d](3_geometry_registration_3d/6_geometric_transforms/affine2d.md) - Cree une structure de transformation affine 2-D.
- [affine3d](3_geometry_registration_3d/6_geometric_transforms/affine3d.md) - Cree une structure de transformation affine 3-D.
- [fitgeotrans](3_geometry_registration_3d/6_geometric_transforms/fitgeotrans.md) - Ajuste une transformation geometrique 2-D depuis des points de controle.
- [imcrop](3_geometry_registration_3d/6_geometric_transforms/imcrop.md) - Rogne une image avec un rectangle.
- [imref2d](3_geometry_registration_3d/6_geometric_transforms/imref2d.md) - Cree une structure de reference spatiale 2-D.
- [imref3d](3_geometry_registration_3d/6_geometric_transforms/imref3d.md) - Cree une structure de reference spatiale 3-D.
- [imregconfig](3_geometry_registration_3d/6_geometric_transforms/imregconfig.md) - Cree des structures d'optimiseur et de metrique pour le recalage d'images.
- [imregcorr](3_geometry_registration_3d/6_geometric_transforms/imregcorr.md) - Estime une transformation de recalage 2-D par correlation de phase.
- [imregister](3_geometry_registration_3d/6_geometric_transforms/imregister.md) - Recale une image mobile sur une image fixe.
- [imregtform](3_geometry_registration_3d/6_geometric_transforms/imregtform.md) - Estime une transformation de recalage 2-D a partir d'images.
- [imresize](3_geometry_registration_3d/6_geometric_transforms/imresize.md) - Redimensionne une image par échelle ou taille de sortie
- [imrotate](3_geometry_registration_3d/6_geometric_transforms/imrotate.md) - Fait pivoter une image d'un angle spécifié
- [imtranslate](3_geometry_registration_3d/6_geometric_transforms/imtranslate.md) - Translate une image en 2D.
- [imwarp](3_geometry_registration_3d/6_geometric_transforms/imwarp.md) - Transforme une image ou un volume avec une matrice numerique.
- [intrinsicToWorld](3_geometry_registration_3d/6_geometric_transforms/intrinsicToWorld.md) - Convertit des coordonnees intrinseques en coordonnees monde.
- [projective2d](3_geometry_registration_3d/6_geometric_transforms/projective2d.md) - Cree une structure de transformation projective 2-D.
- [sizesMatch](3_geometry_registration_3d/6_geometric_transforms/sizesMatch.md) - Determine si une reference spatiale correspond a une taille d'image.
- [transformPointsForward](3_geometry_registration_3d/6_geometric_transforms/transformPointsForward.md) - Applique une transformation geometrique directe a des points.
- [transformPointsInverse](3_geometry_registration_3d/6_geometric_transforms/transformPointsInverse.md) - Applique une transformation geometrique inverse a des points.
- [worldToIntrinsic](3_geometry_registration_3d/6_geometric_transforms/worldToIntrinsic.md) - Convertit des coordonnees monde en coordonnees intrinseques.
- [worldToSubscript](3_geometry_registration_3d/6_geometric_transforms/worldToSubscript.md) - Convertit des coordonnees monde en indices d'image.

### Volumes 3-D

Fonctions de filtrage et traitement de donnees d'image volumetriques.

#### Functions

- [imgaussfilt3](3_geometry_registration_3d/8_volumes_3d/imgaussfilt3.md) - Filtre un volume 3-D avec un noyau gaussien.
- [imresize3](3_geometry_registration_3d/8_volumes_3d/imresize3.md) - Redimensionner un volume 3-D
- [regionprops3](3_geometry_registration_3d/8_volumes_3d/regionprops3.md) - Mesurer les proprietes de regions de volumes 3-D

### Recalage d'images

Guides et points d'entree pour aligner des images, estimer des transformations de recalage et appliquer les sorties recalees.

#### Functions

- [image_registration](3_geometry_registration_3d/9a_image_registration/image_registration.md) - Vue d'ensemble du recalage d'images.
