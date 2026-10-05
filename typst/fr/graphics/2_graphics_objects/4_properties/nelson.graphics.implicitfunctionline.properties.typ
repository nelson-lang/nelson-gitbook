#import "../../nelson_help.typ": *

= implicitfunctionline properties <graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>

Proprietes de l'objet graphique implicitfunctionline.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[implicitfunctionline];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation utilisees par l'inspection graphique.], [Type: objet annotation graphique ou handle vide. Valeurs prises en charge: handle d'annotation ou handle vide.], 
  [#strong[BeingDeleted];], [indique l'etat de suppression de l'objet.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle la file des callbacks pendant l'execution d'un autre callback.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand l'objet recoit un evenement bouton souris.], [Type: valeur de callback. Valeurs prises en charge: \[\], fonction handle, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[Children];], [stocke les handles graphiques enfants.], [Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Clipping];], [controle le rognage dans les axes parents.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Color];], [definit la couleur de la courbe implicite.], [Type: triplet RGB ou nom de couleur. Valeurs prises en charge: triplet RGB, nom court de couleur ou nom long de couleur.], 
  [#strong[ColorMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' preserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ContextMenu];], [attache un menu contextuel a l'objet.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[ContourMatrix];], [stocke les donnees de segments de contour generees.], [Type: matrice numerique. Valeurs prises en charge: \[\] ou matrice de contour.], 
  [#strong[CreateFcn];], [s'execute a la creation de l'objet.], [Type: valeur de callback. Valeurs prises en charge: \[\], fonction handle, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu des infobulles de donnees.], [Type: objet modele d'infobulle ou handle vide. Valeurs prises en charge: handle de modele d'infobulle ou handle vide.], 
  [#strong[DeleteFcn];], [s'execute a la suppression de l'objet.], [Type: valeur de callback. Valeurs prises en charge: \[\], fonction handle, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[DisplayName];], [definit le libelle utilise par les legendes et l'identification d'objet.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire.], 
  [#strong[EdgeAlpha];], [definit la transparence de ligne de contour interne.], [Type: scalaire numerique. Valeurs prises en charge: valeurs dans \[0, 1\].], 
  [#strong[EdgeColor];], [definit la couleur de ligne de contour interne.], [Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'.], 
  [#strong[FaceAlpha];], [definit la transparence de contour rempli interne.], [Type: scalaire numerique ou valeur texte. Valeurs prises en charge: valeurs dans \[0, 1\], 'flat' ou 'interp'.], 
  [#strong[FaceColor];], [definit la couleur de contour rempli interne.], [Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'.], 
  [#strong[Fill];], [controle le remplissage de contour interne.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[Floating];], [controle si les contours utilisent leur niveau comme coordonnee z.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[Function];], [definit la fonction echantillonnee pour generer la courbe implicite.], [Type: fonction handle. Valeurs prises en charge: fonction handle scalaire avec deux entrees.], 
  [#strong[HandleVisibility];], [controle la decouverte du handle.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [controle si l'objet peut recevoir des evenements pointeur.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Interruptible];], [controle si les callbacks peuvent etre interrompus.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LabelColor];], [definit la couleur des libelles de contour internes.], [Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'.], 
  [#strong[LabelFormat];], [definit le format des libelles de contour internes.], [Type: valeur texte ou fonction handle. Valeurs prises en charge: texte de format, string scalaire ou fonction handle.], 
  [#strong[LabelSpacing];], [definit l'espacement entre les libelles de contour internes.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies non negatives.], 
  [#strong[LevelList];], [stocke le niveau zero implicite utilise pour le dessin.], [Type: vecteur numerique. Valeurs prises en charge: niveaux reels finis.], 
  [#strong[LevelListMode];], [stocke le mode automatique ou manuel des niveaux de contour internes.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LevelStep];], [definit l'espacement des niveaux de contour internes.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[LevelStepMode];], [stocke le mode automatique ou manuel de l'espacement de niveaux interne.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LineColor];], [definit la couleur de ligne de contour interne.], [Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'.], 
  [#strong[LineStyle];], [definit le style de ligne de la courbe implicite.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.' ou 'none'.], 
  [#strong[LineStyleMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' preserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LineWidth];], [definit la largeur de ligne de la courbe implicite.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[Marker];], [definit le marqueur de la courbe implicite.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de marqueurs comme 'none', 'o', '+', '\*', '.', 'x', 'square' ou 'diamond'.], 
  [#strong[MarkerEdgeColor];], [definit la couleur de bord du marqueur.], [Type: triplet RGB ou nom de couleur. Valeurs prises en charge: 'auto', 'none', triplet RGB ou nom de couleur.], 
  [#strong[MarkerFaceColor];], [definit la couleur de remplissage du marqueur.], [Type: triplet RGB ou nom de couleur. Valeurs prises en charge: 'auto', 'none', triplet RGB ou nom de couleur.], 
  [#strong[MarkerMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' preserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[MarkerSize];], [definit la taille du marqueur.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[MeshDensity];], [definit le nombre de points d'echantillonnage dans chaque direction.], [Type: entier positif scalaire. Valeurs prises en charge: entiers superieurs a un.], 
  [#strong[Parent];], [definit les axes parents.], [Type: handle graphique scalaire. Valeurs prises en charge: handle d'axes.], 
  [#strong[PickableParts];], [controle quelles parties peuvent recevoir les evenements pointeur.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [definit l'etat de selection de l'objet.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[SelectionHighlight];], [controle la mise en evidence de selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SeriesIndex];], [stocke l'ordre de serie.], [Type: entier scalaire. Valeurs prises en charge: valeur entiere finie.], 
  [#strong[ShowText];], [controle l'affichage des libelles de contour internes.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[SourceTable];], [lie les donnees de l'objet a une table; les proprietes de variables selectionnent les colonnes.], [Type: table. Valeurs prises en charge: table vide ou table fournissant les variables liees.], 
  [#strong[Tag];], [stocke un texte utilisateur pour identifier l'objet.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire.], 
  [#strong[TextList];], [definit les niveaux de contour internes qui recoivent des libelles.], [Type: vecteur numerique. Valeurs prises en charge: niveaux reels finis.], 
  [#strong[TextListMode];], [stocke le mode automatique ou manuel des niveaux internes etiquetes.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[TextStep];], [definit l'espacement entre les niveaux de contour internes etiquetes.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[TextStepMode];], [stocke le mode automatique ou manuel de l'espacement des libelles internes.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[Type];], [indique le type d'objet graphique.], [Type: texte en lecture seule. Valeurs prises en charge: 'implicitfunctionline'.], 
  [#strong[UserData];], [stocke des donnees utilisateur sur l'objet.], [Type: toute valeur Nelson. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [controle la visibilite de l'objet.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[XData];], [stocke les coordonnees x echantillonnees.], [Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec YData et ZData.], 
  [#strong[XDataMode];], [stocke le mode automatique ou manuel des donnees x.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XDataSource];], [stocke l'expression source des donnees x.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire.], 
  [#strong[XRange];], [definit l'intervalle x echantillonne.], [Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes.], 
  [#strong[XRangeMode];], [selectionne le mode automatique ou manuel des limites x.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YData];], [stocke les coordonnees y echantillonnees.], [Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et ZData.], 
  [#strong[YDataMode];], [stocke le mode automatique ou manuel des donnees y.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YDataSource];], [stocke l'expression source des donnees y.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire.], 
  [#strong[YRange];], [definit l'intervalle y echantillonne.], [Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes.], 
  [#strong[YRangeMode];], [selectionne le mode automatique ou manuel des limites y.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZData];], [stocke les valeurs de fonction echantillonnees.], [Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et YData.], 
  [#strong[ZDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [stocke l'expression source des donnees z.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire.], 
  [#strong[ZLocation];], [definit le plan z utilise pour dessiner le contour interne.], [Type: scalaire numerique ou valeur texte. Valeurs prises en charge: scalaire fini, 'zmin' ou 'zmax'.], 
  [#strong[ZVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
)

== Exemple

Inspecter les proprietes de ligne implicite.

``````matlab
h = fimplicit(@(x, y) x.^2 + y.^2 - 1);
names = properties(h);
``````


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>)[fimplicit];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[proprietes de functioncontour];.
