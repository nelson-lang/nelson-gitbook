#import "../../nelson_help.typ": *

= stem properties <graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>

Proprietes de l'objet graphique stem.

== Description

Cette page documente les proprietes visibles retournees par properties pour un objet graphique stem.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation utilisees par l'inspection d'objet.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet annotation associe a l'element graphique, ou handle graphique vide.], 
  [#strong[BaseLine];], [stocke l'objet graphique de ligne de base lorsqu'il est associe au trace stem.], [Type: handle d'objet graphique. Valeurs prises en charge: vecteur vide ou handle de ligne de base.], 
  [#strong[BaseValue];], [definit la valeur z de depart des tiges.], [Type: scalaire numerique. Valeurs prises en charge: scalaire fini.], 
  [#strong[BeingDeleted];], [Nelson calcule cette valeur; les operations graphiques la mettent a jour.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off' ou 'on'.], 
  [#strong[BusyAction];], [controle si un callback interruptif est place en file ou annule.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue' ou 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute lorsque l'objet recoit un evenement de bouton souris.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou tableau de cellules de callback.], 
  [#strong[Children];], [les operations de parentage mettent a jour le vecteur.], [Type: vecteur de handles d'objets graphiques. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Clipping];], [controle le decoupage aux limites des axes.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[Color];], [definit la couleur des lignes de tige et la couleur de marqueur par defaut.], [Type: valeur de couleur. Valeurs prises en charge: nom court de couleur, triplet RGB avec valeurs dans \[0,1\], ou couleur hexadecimale.], 
  [#strong[ColorMode];], ['auto' laisse Nelson choisir la couleur depuis l'ordre de couleurs des axes; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[ContextMenu];], [attache le menu utilise par les actions de clic contextuel.], [Type: handle scalaire d'objet graphique. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute lorsque l'objet est cree.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou tableau de cellules de callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu utilise pour les infobulles de donnees interactives.], [Type: objet de modele d'infobulle ou handle vide. Valeurs prises en charge: modele d'infobulle detenu par l'element graphique, ou handle graphique vide.], 
  [#strong[DeleteFcn];], [s'execute lorsque l'objet est supprime.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou tableau de cellules de callback.], 
  [#strong[DisplayName];], [definit le libelle utilise par les legendes et inspecteurs d'objet.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: toute valeur texte.], 
  [#strong[HandleVisibility];], [controle si le handle est retourne par les fonctions de recherche de handles.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[HitTest];], [controle si l'objet peut recevoir les evenements souris.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[Interruptible];], [controle si les callbacks peuvent etre interrompus.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[LineStyle];], [definit le style des lignes de tige.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.' ou 'none'.], 
  [#strong[LineStyleMode];], ['auto' laisse Nelson choisir le style de ligne; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[LineWidth];], [definit l'epaisseur des lignes de tige.], [Type: scalaire numerique. Valeurs prises en charge: scalaire fini non negatif en points.], 
  [#strong[Marker];], [definit le marqueur affiche pour chaque point.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: symboles de marqueur tels que 'o', '+', '\*', '.', 'x', 's', 'd', '^', 'v', '\>', '\<', 'p', 'h' ou 'none'.], 
  [#strong[MarkerEdgeColor];], [definit la couleur du bord des marqueurs.], [Type: valeur de couleur ou texte de mode. Valeurs prises en charge: 'auto', 'none', nom court de couleur, triplet RGB avec valeurs dans \[0,1\], ou couleur hexadecimale.], 
  [#strong[MarkerFaceColor];], [definit la couleur de remplissage des marqueurs.], [Type: valeur de couleur ou texte de mode. Valeurs prises en charge: 'auto', 'none', nom court de couleur, triplet RGB avec valeurs dans \[0,1\], ou couleur hexadecimale.], 
  [#strong[MarkerMode];], ['auto' laisse Nelson choisir le marqueur; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[MarkerSize];], [definit la taille des marqueurs.], [Type: scalaire numerique. Valeurs prises en charge: scalaire fini non negatif en points.], 
  [#strong[Parent];], [definit le parent graphique.], [Type: handle scalaire d'objet graphique. Valeurs prises en charge: handle axes ou hggroup.], 
  [#strong[PickableParts];], [controle quelles parties visibles peuvent recevoir les evenements souris.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all' ou 'none'.], 
  [#strong[Selected];], [marque l'objet comme selectionne.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[SelectionHighlight];], [controle la surbrillance de selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[SeriesIndex];], [stocke l'indice de serie utilise avec l'ordre de style des axes.], [Type: scalaire numerique. Valeurs prises en charge: scalaire fini positif.], 
  [#strong[ShowBaseLine];], [controle si une ligne de base est affichee lorsque le rendu la prend en charge.], [Type: valeur on\/off. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[SourceTable];], [stocke la table source pour les entrees basees sur table.], [Type: valeur de donnees de type table ou valeur vide. Valeurs prises en charge: \[\] ou conteneur de donnees source.], 
  [#strong[Tag];], [stocke un identifiant texte defini par l'utilisateur.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: toute valeur texte.], 
  [#strong[Type];], [identifie le type de l'objet graphique.], [Type: texte scalaire en lecture seule. Valeurs prises en charge: 'stem'.], 
  [#strong[UserData];], [stocke des donnees definies par l'utilisateur et associees a l'objet.], [Type: toute valeur Nelson. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [controle la visibilite de l'objet.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[XData];], [definit les coordonnees x des points stem.], [Type: vecteur numerique. Valeurs prises en charge: valeurs numeriques finies ou non finies.], 
  [#strong[XDataMode];], ['auto' laisse Nelson generer les donnees x; 'manual' conserve les donnees affectees.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[XDataSource];], [stocke l'expression d'espace de travail utilisee comme source de donnees x.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: toute valeur texte ou ''.], 
  [#strong[XVariable];], [stocke la variable source utilisee pour les donnees x.], [Type: texte, numerique ou valeur vide. Valeurs prises en charge: nom de variable, indice ou valeur vide.], 
  [#strong[YData];], [definit les coordonnees y des points stem.], [Type: vecteur numerique. Valeurs prises en charge: valeurs numeriques finies ou non finies.], 
  [#strong[YDataMode];], ['auto' laisse Nelson generer les donnees y; 'manual' conserve les donnees affectees.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[YDataSource];], [stocke l'expression d'espace de travail utilisee comme source de donnees y.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: toute valeur texte ou ''.], 
  [#strong[YVariable];], [stocke la variable source utilisee pour les donnees y.], [Type: texte, numerique ou valeur vide. Valeurs prises en charge: nom de variable, indice ou valeur vide.], 
  [#strong[ZData];], [definit les coordonnees z des points stem.], [Type: vecteur numerique. Valeurs prises en charge: valeurs numeriques finies ou non finies.], 
  [#strong[ZDataMode];], ['auto' laisse Nelson generer les donnees z; 'manual' conserve les donnees affectees.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[ZDataSource];], [stocke l'expression d'espace de travail utilisee comme source de donnees z.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: toute valeur texte ou ''.], 
  [#strong[ZVariable];], [stocke la variable source utilisee pour les donnees z.], [Type: texte, numerique ou valeur vide. Valeurs prises en charge: nom de variable, indice ou valeur vide.], 
)

== Exemple

Inspecter les proprietes stem.

``````matlab
h = stem(1:3);
h3 = stem3([1 2 3; 4 5 6]);
properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.6_discrete_data_plots.stem>)[stem];, #nlink(<graphics:1_plots.6_discrete_data_plots.stem3>)[stem3];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.
