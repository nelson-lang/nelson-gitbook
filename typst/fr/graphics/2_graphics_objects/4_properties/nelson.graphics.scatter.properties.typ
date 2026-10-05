#import "../../nelson_help.typ": *

= scatter properties <graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>

Proprietes de l'objet graphique scatter.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[scatter];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[AlphaData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[AlphaDataMapping];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[AlphaDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[AlphaVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation utilisees par les outils interactifs et l'inspection d'objet.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation associe a l'objet graphique, ou handle graphique vide si aucune annotation n'est attachee.], 
  [#strong[BeingDeleted];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle si un callback interrompant est mis en file ou annule.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand l'objet recoit un evenement bouton souris.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[CData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[CDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[CDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[Children];], [les operations de parentage mettent le vecteur a jour.], [Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Clipping];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[ColorVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ContextMenu];], [attache le menu utilise par les actions de clic contextuel.], [Type: graphics object handle scalar. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute lors de la creation de l'objet.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu utilise par les bulles de donnees interactives.], [Type: objet modele de bulle de donnees ou handle vide. Valeurs prises en charge: objet modele de bulle de donnees possede par l'objet graphique, ou handle graphique vide si les bulles ne sont pas configurees.], 
  [#strong[DeleteFcn];], [s'execute lors de la suppression de l'objet.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DisplayName];], [met a jour le libelle utilise par les entrees de legende et l'identification de l'objet.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[HandleVisibility];], [controle si les fonctions de recherche de handles peuvent trouver l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [inclut ou exclut l'objet des tests de selection souris.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Interruptible];], [controle si un callback en cours peut etre interrompu.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LineWidth];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[Marker];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'o', '+', '\*', '.', 'x', '\_', '|', 'square', 'diamond', '^', 'v', '\>', '\<', 'pentagram', 'hexagram', 'none'.], 
  [#strong[MarkerEdgeAlpha];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans \[0,1\]; les tableaux doivent correspondre aux donnees rendues associees.], 
  [#strong[MarkerEdgeColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: valeur de couleur ou mot-cle de couleur de marqueur. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'auto', 'none', 'flat'.], 
  [#strong[MarkerFaceAlpha];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans \[0,1\]; les tableaux doivent correspondre aux donnees rendues associees.], 
  [#strong[MarkerFaceColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: valeur de couleur ou mot-cle de couleur de marqueur. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'auto', 'none', 'flat'.], 
  [#strong[Parent];], [change le parent et met a jour Children sur les anciens et nouveaux parents.], [Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet.], 
  [#strong[PickableParts];], [choisit quelles parties visibles ou invisibles peuvent recevoir les clics.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[RData];], [remplace les donnees de rayon polaire utilisees par les graphiques scatter polaires.], [Type: vecteur ou matrice numerique. Valeurs prises en charge: \[\] ou donnees de rayon de dimensions compatibles avec ThetaData et SizeData.], 
  [#strong[RDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[RDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[RJitter];], [recalcule le deplacement aleatoire du rayon polaire pour les points affiches.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'rand', 'randn', 'density'.], 
  [#strong[RJitterDirection];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'both', 'positive', 'negative'.], 
  [#strong[RJitterWidth];], [recalcule le deplacement aleatoire du rayon polaire pour les points affiches.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[RVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[Selected];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SeriesIndex];], [met a jour l'etat stocke de l'objet.], [Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete.], 
  [#strong[SizeData];], [met a jour la taille des marqueurs au prochain rafraichissement graphique.], [Type: scalaire ou vecteur numerique fini. Valeurs prises en charge: valeur positive ou vecteur de valeurs positives correspondant aux points rendus.], 
  [#strong[SizeDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[SizeDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[SizeVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[SourceTable];], [met a jour l'etat stocke de l'objet.], [Type: table or empty array. Valeurs prises en charge: \[\] ou table utilisee par les proprietes de nom de variable.], 
  [#strong[Tag];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet.], 
  [#strong[ThetaData];], [remplace les donnees d'angle polaire utilisees par les graphiques scatter polaires.], [Type: vecteur ou matrice numerique. Valeurs prises en charge: \[\] ou donnees d'angle de dimensions compatibles avec RData et SizeData.], 
  [#strong[ThetaDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ThetaDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ThetaJitter];], [recalcule le deplacement aleatoire de l'angle polaire pour les points affiches.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'rand', 'randn', 'density'.], 
  [#strong[ThetaJitterDirection];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'both', 'positive', 'negative'.], 
  [#strong[ThetaJitterWidth];], [recalcule le deplacement aleatoire de l'angle polaire pour les points affiches.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[ThetaVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[Type];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'.], 
  [#strong[UserData];], [met a jour l'etat stocke de l'objet.], [Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: \[\], tableaux numeriques, texte, cellules, structures ou handles.], 
  [#strong[Visible];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[XData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[XDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[XJitter];], [recalcule la geometrie, les limites ou la disposition.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'rand', 'randn', 'density'.], 
  [#strong[XJitterDirection];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'both', 'positive', 'negative'.], 
  [#strong[XJitterWidth];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[XJitterWidthMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[YDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YJitter];], [recalcule la geometrie, les limites ou la disposition.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'rand', 'randn', 'density'.], 
  [#strong[YJitterDirection];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'both', 'positive', 'negative'.], 
  [#strong[YJitterWidth];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[YJitterWidthMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZData];], [remplace les donnees et recalcule les limites automatiques qui en dependent.], [Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: \[\] ou donnees de dimensions compatibles avec l'objet rendu.], 
  [#strong[ZDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZJitter];], [recalcule la geometrie, les limites ou la disposition.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'rand', 'randn', 'density'.], 
  [#strong[ZJitterDirection];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'both', 'positive', 'negative'.], 
  [#strong[ZJitterWidth];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[ZJitterWidthMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ZVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
)

== Exemple

Creer l'objet graphique et lister ses proprietes.

``````matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = scatter(ax, 1:3, [2 1 3]);
names = properties(h);
close(f)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Page de proprietes ajoutee.],
)

// Auteur: Allan CORNET
