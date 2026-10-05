#import "../../nelson_help.typ": *

= compassplot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>

Proprietes de l'objet graphique compassplot.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[compassplot];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[AffectAutoLimits];], [controle si l'objet contribue aux limites automatiques des axes.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[AlignVertexCenters];], [met a jour l'alignement du rendu des lignes au prochain rafraichissement.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation des outils graphiques.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation associe ou handle graphique vide.], 
  [#strong[BeingDeleted];], [indique si une suppression est en cours.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle la mise en file des callbacks.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand l'objet recoit un evenement souris.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[Children];], [liste les primitives graphiques enfants de l'objet.], [Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide.], 
  [#strong[Clipping];], [controle le decoupage dans les axes parents.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Color];], [definit la couleur des vecteurs.], [Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\] ou couleur hexadecimale.], 
  [#strong[ColorMode];], [choisit la selection automatique ou manuelle de couleur.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ContextMenu];], [associe le menu utilise par les actions de clic contextuel.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute quand l'objet est cree.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu des infobulles de donnees interactives.], [Type: objet modele d'infobulle ou valeur vide. Valeurs prises en charge: un objet modele d'infobulle ou une valeur vide.], 
  [#strong[DeleteFcn];], [s'execute quand l'objet est supprime.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[DisplayName];], [stocke le libelle utilise par les legendes et l'identification.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[HandleVisibility];], [controle la decouverte du handle par les recherches graphiques.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [inclut ou exclut l'objet du test de clic souris.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Interruptible];], [controle l'interruption des callbacks en cours.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LineJoin];], [definit le style de jonction des segments connectes.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'miter', 'round', 'chamfer'.], 
  [#strong[LineStyle];], [definit le style de ligne des vecteurs.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineStyleMode];], [choisit le style de ligne automatique ou manuel.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[LineWidth];], [definit l'epaisseur des lignes.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[Marker];], [definit le symbole de marqueur.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: symboles comme 'none', 'o', '+', '\*', '.', 'x' et autres noms de marqueur.], 
  [#strong[MarkerEdgeColor];], [definit la couleur du bord des marqueurs.], [Type: valeur de couleur ou mot-cle de marqueur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\], couleur hexadecimale, 'auto', 'none' ou 'flat'.], 
  [#strong[MarkerFaceColor];], [definit la couleur de remplissage des marqueurs.], [Type: valeur de couleur ou mot-cle de marqueur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\], couleur hexadecimale, 'auto', 'none' ou 'flat'.], 
  [#strong[MarkerIndices];], [selectionne les points affichant des marqueurs.], [Type: vecteur numerique. Valeurs prises en charge: indices entiers positifs ou valeur vide.], 
  [#strong[MarkerMode];], [choisit le marqueur automatique ou manuel.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[MarkerSize];], [definit la taille des marqueurs.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs scalaires positives finies.], 
  [#strong[Parent];], [stocke les axes polaires parents.], [Type: handle graphique scalaire. Valeurs prises en charge: handle polaraxes.], 
  [#strong[PickableParts];], [controle les parties visibles selectionnables.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[RData];], [stocke les donnees de rayon polaire.], [Type: vecteur numerique. Valeurs prises en charge: valeurs reelles finies avec un element par vecteur.], 
  [#strong[RDataMode];], [choisit les donnees de rayon automatiques ou manuelles.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[RDataSource];], [stocke le nom de variable d'espace de travail utilise pour rafraichir les rayons.], [Type: texte. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail.], 
  [#strong[RVariable];], [stocke la variable de table utilisee pour les rayons.], [Type: texte. Valeurs prises en charge: texte vide ou nom de variable de la table source.], 
  [#strong[Selected];], [controle l'etat de selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controle l'affichage de la selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SeriesIndex];], [stocke l'indice de serie dans l'ordre des couleurs.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs entieres finies.], 
  [#strong[SourceTable];], [stocke la table utilisee pour creer le graphique.], [Type: table ou valeur vide. Valeurs prises en charge: \[\] ou table fournie a compassplot.], 
  [#strong[Tag];], [stocke un texte utilisateur pour identifier l'objet.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[ThetaData];], [stocke les angles polaires en radians.], [Type: vecteur numerique. Valeurs prises en charge: valeurs reelles finies avec un element par vecteur.], 
  [#strong[ThetaDataMode];], [choisit les donnees d'angle automatiques ou manuelles.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ThetaDataSource];], [stocke le nom de variable d'espace de travail utilise pour rafraichir les angles.], [Type: texte. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail.], 
  [#strong[ThetaVariable];], [stocke la variable de table utilisee pour les angles.], [Type: texte. Valeurs prises en charge: texte vide ou nom de variable de la table source.], 
  [#strong[Type];], [identifie le type de l'objet graphique.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'compassplot'.], 
  [#strong[UserData];], [stocke les donnees utilisateur associees a l'objet.], [Type: toute valeur Nelson. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [controle la visibilite de l'objet.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[XData];], [stocke les donnees cartesiennes internes en x.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou donnees numeriques gerees par l'objet.], 
  [#strong[XDataMode];], [choisit les donnees cartesiennes x automatiques ou manuelles.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[XVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YData];], [stocke les donnees cartesiennes internes en y.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou donnees numeriques gerees par l'objet.], 
  [#strong[YDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZData];], [stocke les donnees cartesiennes internes en z.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou donnees numeriques gerees par l'objet.], 
  [#strong[ZDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
)

== Exemple

Inspecter les proprietes de compassplot.

``````matlab
h = compassplot([1 + 1i, 1 - 1i]);
props = properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot];, #nlink(<handle:properties>)[properties];.
