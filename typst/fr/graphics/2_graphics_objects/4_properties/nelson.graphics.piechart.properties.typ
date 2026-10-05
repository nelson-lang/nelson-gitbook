#import "../../nelson_help.typ": *

= piechart properties <graphics:2_graphics_objects.4_properties.nelson.graphics.piechart.properties>

Proprietes de l'objet graphique piechart.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[piechart];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[CategoryCounts];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[ColorOrder];], [modifie les couleurs selectionnees automatiquement pour les series suivantes.], [Type: matrice numerique finie. Valeurs prises en charge: matrice RGB m-par-3 avec valeurs dans \[0,1\].], 
  [#strong[Data];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[DataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[DataVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[Direction];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'reverse'.], 
  [#strong[DisplayOrder];], [change l'ordre affiche des groupes ou variables du graphique.], [Type: mot-cle texte ou vecteur d'ordre. Valeurs prises en charge: 'ascend', 'descend' ou vecteur d'indices d'affichage pris en charge par le graphique.], 
  [#strong[EdgeColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value or color mode keyword. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[ExplodedWedges];], [change les secteurs de piechart ou donutchart dessines separes du centre.], [Type: vecteur numerique ou logique. Valeurs prises en charge: valeur vide ou vecteur avec un element par secteur; les entrees non nulles decalent le secteur correspondant.], 
  [#strong[FaceAlpha];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans \[0,1\]; les tableaux doivent correspondre aux donnees rendues associees.], 
  [#strong[FaceColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value or color mode keyword. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[FontColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB'.], 
  [#strong[FontName];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de police systeme ou 'FixedWidth'.], 
  [#strong[FontSize];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie.], 
  [#strong[FontSizeMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[HandleVisibility];], [controle si les fonctions de recherche de handles peuvent trouver l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[InnerPosition];], [recalcule la geometrie, les limites ou la disposition.], [Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple \[left bottom width height\], \[x y z\], \[azimuth elevation\] ou \[minor major\].], 
  [#strong[Interpreter];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'tex', 'none'.], 
  [#strong[LabelStyle];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de style definis par cet objet: styles UI, styles de lumiere, styles de graphique ou styles de ligne.], 
  [#strong[LabelStyleMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[Labels];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees.], 
  [#strong[LabelsMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[Layout];], [met a jour le placement demande au gestionnaire de layout parent.], [Type: objet d'options de layout ou valeur vide. Valeurs prises en charge: informations de layout stockees par les gestionnaires parents, y compris le placement en tuile quand l'objet le prend en charge.], 
  [#strong[LegendTitle];], [met a jour le titre affiche au-dessus des entrees de legende.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire ou texte vide.], 
  [#strong[LegendVisible];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: on\/off value. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[LineWidth];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[Names];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees.], 
  [#strong[NamesMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[NamesVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[NumDisplayWedges];], [met a jour l'etat stocke de l'objet.], [Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete.], 
  [#strong[OuterPosition];], [recalcule la geometrie, les limites ou la disposition.], [Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple \[left bottom width height\], \[x y z\], \[azimuth elevation\] ou \[minor major\].], 
  [#strong[Parent];], [change le parent et met a jour Children sur les anciens et nouveaux parents.], [Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet.], 
  [#strong[Position];], [recalcule la geometrie, les limites ou la disposition.], [Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple \[left bottom width height\], \[x y z\], \[azimuth elevation\] ou \[minor major\].], 
  [#strong[PositionConstraint];], [recalcule la geometrie, les limites ou la disposition.], [Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple \[left bottom width height\], \[x y z\], \[azimuth elevation\] ou \[minor major\].], 
  [#strong[Proportions];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[ShowOthers];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: on\/off value. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[SourceTable];], [met a jour l'etat stocke de l'objet.], [Type: table or empty array. Valeurs prises en charge: \[\] ou table utilisee par les proprietes de nom de variable.], 
  [#strong[StartAngle];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie.], 
  [#strong[Title];], [met a jour le titre affiche ou l'objet titre associe a l'objet graphique.], [Type: objet texte graphique ou valeur texte, selon la classe d'objet. Valeurs prises en charge: objet texte de titre, vecteur ligne de caracteres, chaine scalaire ou texte vide.], 
  [#strong[Type];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'.], 
  [#strong[Units];], [recalcule la geometrie, les limites ou la disposition.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.], 
  [#strong[Visible];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[WedgeDisplayData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[WedgeDisplayNames];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees.], 
)

== Exemple

Creer l'objet graphique et lister ses proprietes.

``````matlab
f = figure('Visible', 'off');
h = piechart(f, [1 2 3]);
names = properties(h);
close(f)
``````


== Voir aussi

#nlink(<graphics:1_plots.6_discrete_data_plots.piechart>)[piechart];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Page de proprietes ajoutee.],
)

// Auteur: Allan CORNET
