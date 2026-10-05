#import "../../nelson_help.typ": *

= wordcloud properties <graphics:2_graphics_objects.4_properties.nelson.graphics.wordcloud.properties>

Proprietes de l'objet graphique wordcloud.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[wordcloud];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation utilisees par les outils interactifs.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet annotation associe ou handle graphique vide.], 
  [#strong[BeingDeleted];], [Nelson calcule cette valeur pendant les operations graphiques.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[Box];], [controle si le cadre du graphique est affiche.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle si un callback interrompant est mis en file ou annule.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand l'objet recoit un evenement souris.], [Type: valeur de callback. Valeurs prises en charge: \[\], function handle, vecteur de caracteres, string scalaire ou tableau de callback.], 
  [#strong[Children];], [les operations de parentage mettent a jour ce vecteur.], [Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide.], 
  [#strong[Color];], [definit la couleur par defaut utilisee pour les mots rendus.], [Type: valeur de couleur ou matrice de couleurs. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\], couleur hexadecimale ou matrice n-par-3.], 
  [#strong[ContextMenu];], [associe le menu utilise par les actions de clic contextuel.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute quand l'objet est cree.], [Type: valeur de callback. Valeurs prises en charge: \[\], function handle, vecteur de caracteres, string scalaire ou tableau de callback.], 
  [#strong[DeleteFcn];], [s'execute quand l'objet est supprime.], [Type: valeur de callback. Valeurs prises en charge: \[\], function handle, vecteur de caracteres, string scalaire ou tableau de callback.], 
  [#strong[DisplayName];], [met a jour le libelle utilise par les legendes et l'identification.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[FontName];], [definit la famille de police utilisee pour afficher les mots.], [Type: texte. Valeurs prises en charge: nom de police installee comme vecteur de caracteres ou string scalaire.], 
  [#strong[HandleVisibility];], [controle si les fonctions de recherche de handles peuvent trouver l'objet.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HighlightColor];], [definit la couleur utilisee par les mots surlignes.], [Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\] ou couleur hexadecimale.], 
  [#strong[HitTest];], [inclut ou exclut l'objet du test de clic souris.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Interruptible];], [controle si un callback en cours peut etre interrompu.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[InnerPosition];], [stocke le rectangle interieur du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Layout];], [stocke les informations de placement en disposition tuilee.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle d'options de disposition.], 
  [#strong[LayoutNum];], [selectionne la variante deterministe de placement.], [Type: scalaire numerique fini. Valeurs prises en charge: entiers positifs.], 
  [#strong[MaxDisplayWords];], [definit le nombre maximal de mots affiches.], [Type: scalaire numerique fini. Valeurs prises en charge: entiers non negatifs.], 
  [#strong[Parent];], [definit le conteneur graphique parent utilise par l'objet.], [Type: handle graphique scalaire. Valeurs prises en charge: handle figure.], 
  [#strong[PickableParts];], [controle si les parties visibles ou toutes les parties peuvent etre selectionnees.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[OuterPosition];], [stocke le rectangle exterieur du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Position];], [stocke le rectangle de position du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[PositionConstraint];], [choisit le rectangle preserve pendant la disposition.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'outerposition', 'innerposition'.], 
  [#strong[Selected];], [marque l'objet comme selectionne ou non.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controle l'affichage des poignees de selection.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Shape];], [definit l'enveloppe de placement des mots.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'oval', 'rectangle'.], 
  [#strong[SizeData];], [definit les poids numeriques utilises pour dimensionner les mots.], [Type: vecteur numerique reel. Valeurs prises en charge: valeurs numeriques finies.], 
  [#strong[SizeVariable];], [stocke la variable de table utilisee pour les tailles des mots.], [Type: texte. Valeurs prises en charge: \[\] ou nom d'une variable de la table source.], 
  [#strong[SizePower];], [definit l'exposant utilise pour convertir les poids en tailles de police.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs scalaires positives.], 
  [#strong[SourceTable];], [stocke la table utilisee pour creer le graphique.], [Type: table ou valeur vide. Valeurs prises en charge: \[\] ou table fournie a wordcloud.], 
  [#strong[Tag];], [stocke un texte utilisateur pour identifier l'objet.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[Title];], [definit le texte du titre du graphique.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[TitleFontName];], [definit la famille de police utilisee pour afficher le titre.], [Type: texte. Valeurs prises en charge: nom de police installee comme vecteur de caracteres ou string scalaire.], 
  [#strong[Type];], [identifie le type de l'objet graphique.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'wordcloud'.], 
  [#strong[Units];], [definit les unites des proprietes de position.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'.], 
  [#strong[UserData];], [stocke des donnees utilisateur sur l'objet.], [Type: valeur Nelson quelconque. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [affiche ou masque l'objet.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[WordData];], [definit les mots affiches par le graphique.], [Type: vecteur string ou vecteur cellule de lignes de caracteres. Valeurs prises en charge: textes non vides.], 
  [#strong[WordVariable];], [stocke la variable de table utilisee pour les mots affiches.], [Type: texte. Valeurs prises en charge: \[\] ou nom d'une variable de la table source.], 
)

== Exemple

Inspecter les proprietes de wordcloud.

``````matlab
h = wordcloud({'alpha','beta'}, [5 3]);
props = properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.wordcloud>)[wordcloud];, #nlink(<handle:properties>)[properties];.
