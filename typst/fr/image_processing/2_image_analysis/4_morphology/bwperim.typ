#import "../../nelson_help.typ": *

= bwperim <image_processing:2_image_analysis.4_morphology.bwperim>

Trouve les pixels de perimetre des objets binaires.

== Syntaxe

- #raw("BW2 = bwperim(BW)");
- #raw("BW2 = bwperim(BW, conn)");

== Argument d'entrée

/ BW: Image binaire d'entree. Les valeurs non nulles sont traitees comme true.
/ conn: Connectivite, 4 ou 8.

== Argument de sortie

/ BW2: Image logique contenant les pixels de perimetre.

== Description

Trouve les pixels de perimetre des objets binaires. Les connectivites prises en charge sont 4 et 8.


== Exemple

Trouver le perimetre d un objet

``````matlab
BW=false(64,64); BW(20:44,20:44)=true;
P=bwperim(BW);
figure; imagesc(P); g=linspace(0,1,64)'; colormap([g g g]); title('Perimeter');
``````


#align(center)[#image("bwperim_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.4_morphology.bwmorph>)[bwmorph];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwboundaries>)[bwboundaries];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
