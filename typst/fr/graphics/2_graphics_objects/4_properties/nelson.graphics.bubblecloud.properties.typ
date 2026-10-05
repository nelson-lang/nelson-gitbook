#import "../../nelson_help.typ": *

= bubblecloud properties <graphics:2_graphics_objects.4_properties.nelson.graphics.bubblecloud.properties>

Proprietes de l'objet graphique bubblecloud.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[bubblecloud];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation des outils graphiques.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation associe ou handle graphique vide.], 
  [#strong[BeingDeleted];], [indique si une suppression est en cours.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle la mise en file des callbacks.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand l'objet recoit un evenement souris.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[Children];], [liste les primitives graphiques enfants du graphique.], [Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[ContextMenu];], [associe le menu utilise par les actions de clic contextuel.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute quand l'objet est cree.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[DeleteFcn];], [s'execute quand l'objet est supprime.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, string scalaire ou cellule de callback.], 
  [#strong[DisplayName];], [stocke le libelle utilise par les legendes et l'identification.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[EdgeColor];], [definit la couleur du contour des bulles.], [Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\] ou couleur hexadecimale.], 
  [#strong[FaceColor];], [definit la couleur de remplissage des bulles.], [Type: valeur de couleur ou mot-cle de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\], couleur hexadecimale ou 'flat'.], 
  [#strong[GroupData];], [stocke les groupes utilises pour colorer les bulles et creer la legende.], [Type: cellule de vecteurs de caracteres. Valeurs prises en charge: cellule vide ou une etiquette par bulle.], 
  [#strong[GroupVariable];], [stocke la variable de table utilisee pour les groupes.], [Type: texte. Valeurs prises en charge: texte vide ou nom de variable de la table source.], 
  [#strong[HandleVisibility];], [controle la decouverte du handle par les recherches graphiques.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [inclut ou exclut l'objet du test de clic souris.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[InnerPosition];], [stocke le rectangle interieur du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Interruptible];], [controle l'interruption des callbacks en cours.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LabelData];], [stocke les libelles affiches dans les bulles.], [Type: cellule de vecteurs de caracteres. Valeurs prises en charge: cellule vide ou un libelle par bulle.], 
  [#strong[LabelVariable];], [stocke la variable de table utilisee pour les libelles.], [Type: texte. Valeurs prises en charge: texte vide ou nom de variable de la table source.], 
  [#strong[LegendTitle];], [definit le titre affiche au-dessus des entrees de legende.], [Type: texte. Valeurs prises en charge: vecteur de caracteres, string scalaire ou texte vide.], 
  [#strong[OuterPosition];], [stocke le rectangle exterieur du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Parent];], [stocke le conteneur graphique parent.], [Type: handle graphique scalaire. Valeurs prises en charge: handle figure.], 
  [#strong[PickableParts];], [controle les parties visibles selectionnables.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Position];], [stocke le rectangle de position du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Selected];], [controle l'etat de selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controle l'affichage de la selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SizeData];], [stocke les tailles numeriques des bulles.], [Type: vecteur ligne numerique. Valeurs prises en charge: valeurs numeriques finies.], 
  [#strong[SizeVariable];], [stocke la variable de table utilisee pour les tailles.], [Type: texte. Valeurs prises en charge: texte vide ou nom de variable de la table source.], 
  [#strong[SourceTable];], [stocke la table utilisee pour creer le graphique.], [Type: table ou valeur vide. Valeurs prises en charge: \[\] ou table fournie a bubblecloud.], 
  [#strong[Tag];], [stocke un texte utilisateur pour identifier l'objet.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[Title];], [definit le titre du graphique.], [Type: texte. Valeurs prises en charge: vecteur de caracteres, string scalaire ou texte vide.], 
  [#strong[Type];], [identifie le type de l'objet graphique.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'bubblecloud'.], 
  [#strong[Units];], [definit les unites des proprietes de position.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'.], 
  [#strong[UserData];], [stocke les donnees utilisateur associees au graphique.], [Type: toute valeur Nelson. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [controle la visibilite du graphique.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
)

== Exemple

Inspecter les proprietes de bubblecloud.

``````matlab
h = bubblecloud([10 20 30], {'A','B','C'});
props = properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblecloud>)[bubblecloud];, #nlink(<handle:properties>)[properties];.
