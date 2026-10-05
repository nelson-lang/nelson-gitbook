#import "../../nelson_help.typ": *

= scatterhistogram properties <graphics:2_graphics_objects.4_properties.nelson.graphics.scatterhistogram.properties>

Proprietes de l'objet graphique scatterhistogram.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[scatterhistogram];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [stocke les metadonnees d'annotation pour les outils graphiques.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation ou handle graphique vide.], 
  [#strong[BeingDeleted];], [indique si une suppression est en cours.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BinWidths];], [stocke les largeurs de classes des histogrammes.], [Type: vecteur ligne numerique. Valeurs prises en charge: deux valeurs finies positives \[xWidth yWidth\].], 
  [#strong[BusyAction];], [controle la mise en file des callbacks pendant l'execution d'un autre callback.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand le graphique recoit un evenement bouton souris.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[Children];], [liste les enfants graphiques appartenant au graphique.], [Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Color];], [definit la couleur des marqueurs du nuage.], [Type: triplet RGB ou nom de couleur. Valeurs prises en charge: vecteur numerique 1-by-3 ou nom de couleur comme 'r', 'g' ou 'blue'.], 
  [#strong[ContextMenu];], [attache un menu contextuel au graphique.], [Type: graphics object handle scalar. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute lors de la creation du graphique.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DeleteFcn];], [s'execute lors de la suppression du graphique.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DisplayName];], [definit le libelle utilise par les outils de legende.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[FontName];], [definit la famille de police du texte.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de polices installees ou ''.], 
  [#strong[FontSize];], [definit la taille du texte.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[GroupData];], [stocke les donnees de groupement.], [Type: vecteur. Valeurs prises en charge: \[\] ou une valeur par point.], 
  [#strong[GroupVariable];], [stocke la variable de table utilisee pour le groupement.], [Type: texte, numerique ou selecteur de table. Valeurs prises en charge: \[\] ou selecteur de variable de la table source.], 
  [#strong[HandleVisibility];], [controle la decouverte du handle par les recherches graphiques.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HistogramDisplayStyle];], [definit le style des histogrammes marginaux.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'bar', 'stairs'.], 
  [#strong[HitTest];], [controle si le graphique repond aux clics souris.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[InnerPosition];], [stocke le rectangle interne du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Interruptible];], [controle l'interruption des callbacks en cours.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Layout];], [stocke les informations de placement dans une disposition en tuiles.], [Type: graphics object handle scalar. Valeurs prises en charge: \[\] ou handle d'options de layout.], 
  [#strong[LegendTitle];], [definit le titre de la legende de groupes.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[LegendVisible];], [controle l'affichage de la legende de groupes.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LineStyle];], [definit le style de ligne du nuage.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [definit la largeur de ligne du nuage.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[MarkerAlpha];], [definit la transparence des marqueurs.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs de 0 a 1.], 
  [#strong[MarkerFilled];], [controle si les marqueurs sont remplis.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[MarkerSize];], [definit la taille des marqueurs.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[MarkerStyle];], [definit le style des marqueurs.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'o', '+', '\*', '.', 'x', 'square' et autres symboles.], 
  [#strong[NumBins];], [definit le nombre de classes dans les deux histogrammes marginaux.], [Type: entier positif scalaire ou vecteur numerique a deux elements. Valeurs prises en charge: entiers finis positifs.], 
  [#strong[OuterPosition];], [stocke le rectangle externe du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Parent];], [stocke le parent graphique.], [Type: graphics object handle scalar. Valeurs prises en charge: handle de figure.], 
  [#strong[PickableParts];], [controle quelles parties visibles peuvent etre selectionnees.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Position];], [stocke le rectangle de position du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[PositionConstraint];], [choisit le rectangle de position conserve pendant la mise en page.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'outerposition', 'innerposition'.], 
  [#strong[ScatterPlotLocation];], [definit l'emplacement du nuage dans le graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'southwest', 'southeast', 'northwest', 'northeast'.], 
  [#strong[ScatterPlotProportion];], [definit la proportion de surface du nuage.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs de 0 a 1.], 
  [#strong[Selected];], [controle l'etat de selection.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controle l'affichage du surlignage de selection.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SourceTable];], [stocke la table utilisee pour creer le graphique.], [Type: table ou valeur vide. Valeurs prises en charge: \[\] ou table fournie a scatterhistogram.], 
  [#strong[Tag];], [stocke un texte defini par l'utilisateur.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[Title];], [definit le titre du graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[Type];], [identifie le type d'objet graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'scatterhistogram'.], 
  [#strong[Units];], [definit les unites utilisees par les proprietes de position.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'.], 
  [#strong[UserData];], [stocke les donnees utilisateur attachees au graphique.], [Type: toute valeur Nelson. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [controle la visibilite du graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[XData];], [stocke les donnees x du nuage.], [Type: vecteur numerique. Valeurs prises en charge: une valeur par point.], 
  [#strong[XHistogramDirection];], [definit la direction de l'histogramme x.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'up', 'down'.], 
  [#strong[XLabel];], [definit le libelle de l'axe x.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[XLimits];], [stocke les limites de l'axe x.], [Type: vecteur ligne numerique. Valeurs prises en charge: deux valeurs finies croissantes \[min max\].], 
  [#strong[XVariable];], [stocke la variable de table utilisee pour les donnees x.], [Type: texte, numerique ou selecteur de table. Valeurs prises en charge: \[\] ou selecteur de variable de la table source.], 
  [#strong[YData];], [stocke les donnees y du nuage.], [Type: vecteur numerique. Valeurs prises en charge: une valeur par point.], 
  [#strong[YHistogramDirection];], [definit la direction de l'histogramme y.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'left', 'right'.], 
  [#strong[YLabel];], [definit le libelle de l'axe y.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[YLimits];], [stocke les limites de l'axe y.], [Type: vecteur ligne numerique. Valeurs prises en charge: deux valeurs finies croissantes \[min max\].], 
  [#strong[YVariable];], [stocke la variable de table utilisee pour les donnees y.], [Type: texte, numerique ou selecteur de table. Valeurs prises en charge: \[\] ou selecteur de variable de la table source.], 
)

== Exemple

Inspecter les proprietes de scatterhistogram.

``````matlab
h = scatterhistogram(1:6, [2 3 2 4 5 4]);
properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.scatterhistogram>)[scatterhistogram];.
