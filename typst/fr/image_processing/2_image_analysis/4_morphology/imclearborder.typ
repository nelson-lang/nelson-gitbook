#import "../../nelson_help.typ": *

= imclearborder <image_processing:2_image_analysis.4_morphology.imclearborder>

Supprime les composants binaires connectes au bord de l'image.

== Syntaxe

- #raw("BW2 = imclearborder(BW)");
- #raw("BW2 = imclearborder(BW, conn)");

== Argument d'entrée

/ BW: Image binaire 2-D d'entree.
/ conn: Connectivite, soit 4, 8, ou une matrice 3-by-3 equivalente.

== Argument de sortie

/ BW2: Image logique apres suppression des composants connectes au bord.

== Description

imclearborder supprime les composants de premier plan qui touchent la premiere ou la derniere ligne ou colonne. Cette fonction est utile apres seuillage ou segmentation lorsque les objets partiels au bord doivent etre retires.


== Exemple

Supprimer les composants au bord

``````matlab
BW=false(64,64);
BW(1:18,8:28)=true; BW(28:48,34:54)=true;
BW2=imclearborder(BW);
figure; subplot(1,2,1); imagesc(BW); title('Entree');
subplot(1,2,2); imagesc(BW2); title('Nettoyee');
``````


#align(center)[#image("imclearborder_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp];, #nlink(<image_processing:2_image_analysis.4_morphology.bwareaopen>)[bwareaopen];, #nlink(<image_processing:2_image_analysis.4_morphology.imfill>)[imfill];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
