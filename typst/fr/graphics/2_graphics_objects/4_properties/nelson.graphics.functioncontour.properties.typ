#import "../../nelson_help.typ": *

= functioncontour properties <graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>

Proprietes de l'objet graphique functioncontour.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[functioncontour];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: handle d'annotation ou handle vide.], 
  [#strong[BeingDeleted];], [indique l'etat de suppression.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle la file d'attente des callbacks.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute lors d'un evenement bouton souris.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[Children];], [stocke les handles graphiques enfants.], [Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Clipping];], [controle le rognage par les axes parents.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[ContextMenu];], [attache un menu contextuel.], [Type: graphics object handle scalar. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[ContourMatrix];], [stocke les segments de contour generes.], [Type: matrice numerique. Valeurs prises en charge: \[\] ou matrice de contour.], 
  [#strong[CreateFcn];], [s'execute lors de la creation.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu des data tips.], [Type: data tip template object ou handle vide. Valeurs prises en charge: handle de data tip template ou handle vide.], 
  [#strong[DeleteFcn];], [s'execute lors de la suppression.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DisplayName];], [definit le libelle utilise par les legendes.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[EdgeAlpha];], [definit la transparence des lignes de contour.], [Type: scalaire numerique. Valeurs prises en charge: valeurs dans \[0, 1\].], 
  [#strong[EdgeColor];], [definit la couleur interne des lignes.], [Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'.], 
  [#strong[FaceAlpha];], [definit la transparence du remplissage.], [Type: scalaire numerique ou valeur texte. Valeurs prises en charge: valeurs dans \[0, 1\], 'flat' ou 'interp'.], 
  [#strong[FaceColor];], [definit la couleur du remplissage.], [Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'.], 
  [#strong[Fill];], [controle le remplissage entre niveaux.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[Floating];], [controle l'utilisation des niveaux comme coordonnee z.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[Function];], [definit la fonction echantillonnee.], [Type: handle de fonction. Valeurs prises en charge: handle scalaire a deux entrees.], 
  [#strong[HandleVisibility];], [controle la decouverte du handle.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [controle la reception des evenements pointeur.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Interruptible];], [controle l'interruption des callbacks.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LabelColor];], [definit la couleur des libelles.], [Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'.], 
  [#strong[LabelFormat];], [definit le format des libelles.], [Type: valeur texte ou handle de fonction. Valeurs prises en charge: texte de format, chaine scalaire ou handle de fonction.], 
  [#strong[LabelSpacing];], [definit l'espacement des libelles.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies non negatives.], 
  [#strong[LevelList];], [definit les niveaux de contour.], [Type: vecteur numerique. Valeurs prises en charge: valeurs de niveaux reelles finies.], 
  [#strong[LevelListMode];], [selectionne les niveaux automatiques ou manuels.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LevelStep];], [definit l'espacement entre niveaux generes.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[LevelStepMode];], [selectionne l'espacement automatique ou manuel.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LineColor];], [definit la couleur des lignes de contour.], [Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'.], 
  [#strong[LineStyle];], [definit le style des lignes.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.' ou 'none'.], 
  [#strong[LineWidth];], [definit l'epaisseur des lignes.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[MeshDensity];], [definit le nombre de points echantillonnes par direction.], [Type: scalaire entier positif. Valeurs prises en charge: entiers superieurs a un.], 
  [#strong[Parent];], [definit les axes parents.], [Type: graphics object handle scalar. Valeurs prises en charge: handle d'axes.], 
  [#strong[PickableParts];], [controle les parties recevant les evenements pointeur.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [definit l'etat de selection.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[SelectionHighlight];], [controle la surbrillance de selection.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[ShowText];], [controle l'affichage des libelles.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[Tag];], [stocke un texte utilisateur d'identification.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[TextList];], [definit les niveaux qui recoivent des libelles.], [Type: vecteur numerique. Valeurs prises en charge: valeurs de niveaux reelles finies.], 
  [#strong[TextListMode];], [selectionne les niveaux libelles automatiques ou manuels.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[TextStep];], [definit l'espacement des niveaux libelles.], [Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives.], 
  [#strong[TextStepMode];], [selectionne l'espacement automatique ou manuel des libelles.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[Type];], [indique le type d'objet graphique.], [Type: texte en lecture seule. Valeurs prises en charge: 'functioncontour'.], 
  [#strong[UserData];], [stocke des donnees utilisateur.], [Type: any Nelson value. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [controle la visibilite.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[XData];], [stocke les coordonnees x echantillonnees.], [Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec YData et ZData.], 
  [#strong[XDataMode];], [selectionne les donnees x automatiques ou manuelles.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XDataSource];], [stocke l'expression source des donnees x.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[XRange];], [definit l'intervalle x echantillonne.], [Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes.], 
  [#strong[XRangeMode];], [selectionne les limites x automatiques ou manuelles.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YData];], [stocke les coordonnees y echantillonnees.], [Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et ZData.], 
  [#strong[YDataMode];], [selectionne les donnees y automatiques ou manuelles.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YDataSource];], [stocke l'expression source des donnees y.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[YRange];], [definit l'intervalle y echantillonne.], [Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes.], 
  [#strong[YRangeMode];], [selectionne les limites y automatiques ou manuelles.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ZData];], [stocke les valeurs de fonction echantillonnees.], [Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et YData.], 
  [#strong[ZDataSource];], [stocke l'expression source des donnees z.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[ZLocation];], [definit le plan z utilise pour tracer les contours.], [Type: scalaire numerique ou valeur texte. Valeurs prises en charge: scalaire fini, 'zmin' ou 'zmax'.], 
)

== Exemple

Inspecter les proprietes d'un contour de fonction.

``````matlab
h = fcontour(@(x, y) x.^2 - y.^2);
names = properties(h);
``````


== Voir aussi

#nlink(<graphics:1_plots.3_contour_plots.fcontour>)[fcontour];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>)[proprietes de contour];.
