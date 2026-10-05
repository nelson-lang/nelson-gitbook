#import "../../nelson_help.typ": *

= contour properties <graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>

Proprietes de l'objet graphique contour.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[contour];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation utilisees par les outils interactifs et l'inspection d'objet.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation associe a l'objet graphique, ou handle graphique vide si aucune annotation n'est attachee.], 
  [#strong[BeingDeleted];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle si un callback interrompant est mis en file ou annule.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand l'objet recoit un evenement bouton souris.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[Children];], [les operations de parentage mettent le vecteur a jour.], [Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Clipping];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[ContextMenu];], [attache le menu utilise par les actions de clic contextuel.], [Type: graphics object handle scalar. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[ContourMatrix];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: matrice numerique finie. Valeurs prises en charge: \[\] ou matrice avec une ligne par sommet, normale, point ou segment de contour.], 
  [#strong[CreateFcn];], [s'execute lors de la creation de l'objet.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu utilise par les bulles de donnees interactives.], [Type: objet modele de bulle de donnees ou handle vide. Valeurs prises en charge: objet modele de bulle de donnees possede par l'objet graphique, ou handle graphique vide si les bulles ne sont pas configurees.], 
  [#strong[DeleteFcn];], [s'execute lors de la suppression de l'objet.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DisplayName];], [met a jour le libelle utilise par les entrees de legende et l'identification de l'objet.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[EdgeAlpha];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans \[0,1\]; les tableaux doivent correspondre aux donnees rendues associees.], 
  [#strong[EdgeColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value or color mode keyword. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[FaceAlpha];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans \[0,1\]; les tableaux doivent correspondre aux donnees rendues associees.], 
  [#strong[FaceColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value or color mode keyword. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[Fill];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: on\/off value. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[Floating];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: on\/off value. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[HandleVisibility];], [controle si les fonctions de recherche de handles peuvent trouver l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [inclut ou exclut l'objet des tests de selection souris.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Interruptible];], [controle si un callback en cours peut etre interrompu.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LabelColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB'.], 
  [#strong[LabelFormat];], [change le formatage des libelles numeriques du graphique.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire contenant un format numerique, ou texte vide.], 
  [#strong[LabelSpacing];], [change l'espacement entre les libelles du graphique et sa geometrie.], [Type: scalaire numerique. Valeurs prises en charge: scalaire fini non negatif.], 
  [#strong[LevelList];], [recalcule la geometrie, les limites ou la disposition.], [Type: vecteur numerique fini. Valeurs prises en charge: \[\] ou vecteur numerique fini, normalement croissant.], 
  [#strong[LevelListMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LevelStep];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie.], 
  [#strong[LevelStepMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LineColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value or color mode keyword. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[LineStyle];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[Parent];], [change le parent et met a jour Children sur les anciens et nouveaux parents.], [Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet.], 
  [#strong[PickableParts];], [choisit quelles parties visibles ou invisibles peuvent recevoir les clics.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[ShowText];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: on\/off value. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[Tag];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet.], 
  [#strong[TextList];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees.], 
  [#strong[TextListMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[TextStep];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie.], 
  [#strong[TextStepMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[Type];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'.], 
  [#strong[UserData];], [met a jour l'etat stocke de l'objet.], [Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: \[\], tableaux numeriques, texte, cellules, structures ou handles.], 
  [#strong[Visible];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[XData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[XDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[YDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[ZDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZLocation];], [recalcule la geometrie, les limites ou la disposition.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'.], 
)

== Exemple

Creer l'objet graphique et lister ses proprietes.

``````matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
[~, h] = contour(ax, peaks(8));
names = properties(h);
close(f)
``````


== Voir aussi

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Page de proprietes ajoutee.],
)

// Auteur: Allan CORNET
