#import "../../nelson_help.typ": *

= parallelplot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>

Proprietes de l'objet graphique parallelplot.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[parallelplot];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [stocke les metadonnees d'annotation des outils graphiques.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation ou handle graphique vide.], 
  [#strong[BeingDeleted];], [indique si une suppression est en cours.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle la mise en file des callbacks.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute lors d'un clic souris sur le graphique.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule de callback.], 
  [#strong[Children];], [liste les primitives graphiques utilisees pour le rendu.], [Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Color];], [definit la couleur de ligne par defaut des donnees non groupees.], [Type: triplet RGB ou nom de couleur. Valeurs prises en charge: vecteur RGB 1-par-3 ou nom tel que 'r', 'g' ou 'blue'.], 
  [#strong[ContextMenu];], [associe un menu contextuel au graphique.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CoordinateData];], [stocke les donnees numeriques de coordonnees affichees.], [Type: matrice numerique. Valeurs prises en charge: \[\] ou matrice numerique finie.], 
  [#strong[CoordinateLabel];], [definit le texte du libelle des coordonnees.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[CoordinateTickLabels];], [definit les libelles sous les axes de coordonnees.], [Type: cellule de vecteurs de caracteres ou vecteur de chaines. Valeurs prises en charge: un libelle par coordonnee.], 
  [#strong[CoordinateVariables];], [stocke les variables de table selectionnees.], [Type: cellule de vecteurs de caracteres ou vecteur de chaines. Valeurs prises en charge: \[\] ou noms de variables de la table source.], 
  [#strong[CreateFcn];], [s'execute a la creation du graphique.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule de callback.], 
  [#strong[Data];], [stocke la matrice numerique tracee en lignes paralleles.], [Type: matrice numerique. Valeurs prises en charge: matrice numerique non vide.], 
  [#strong[DataLabel];], [definit le texte du libelle des donnees.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[DataNormalization];], [choisit la mise a l'echelle des coordonnees numeriques.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'range', 'none'.], 
  [#strong[DeleteFcn];], [s'execute a la suppression du graphique.], [Type: valeur de callback. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule de callback.], 
  [#strong[DisplayName];], [definit le libelle utilise par les outils de legende.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[FontName];], [definit la famille de police du texte du graphique.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de polices installees ou ''.], 
  [#strong[FontSize];], [definit la taille du texte du graphique.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs scalaires positives finies.], 
  [#strong[GroupData];], [stocke les donnees de groupe utilisees pour colorer les lignes.], [Type: vecteur. Valeurs prises en charge: \[\] ou une valeur par ligne de donnees.], 
  [#strong[GroupVariable];], [stocke la variable de table utilisee pour le regroupement.], [Type: texte, numerique ou selecteur de table. Valeurs prises en charge: \[\] ou selecteur d'une variable de la table source.], 
  [#strong[HandleVisibility];], [controle la decouverte du handle par les recherches graphiques.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [controle la reaction aux clics souris.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[InnerPosition];], [stocke le rectangle interieur du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Interruptible];], [controle l'interruption des callbacks en cours.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Jitter];], [definit la gigue horizontale appliquee aux coordonnees.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs finies superieures ou egales a 0.], 
  [#strong[Layout];], [stocke les informations de placement en disposition tuilee.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle d'options de disposition.], 
  [#strong[LegendTitle];], [definit le titre de la legende de groupe.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[LegendVisible];], [controle l'affichage de la legende de groupe.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LineAlpha];], [definit la transparence des lignes.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs de 0 a 1.], 
  [#strong[LineStyle];], [definit le style des lignes tracees.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [definit l'epaisseur des lignes tracees.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs scalaires positives finies.], 
  [#strong[MarkerSize];], [definit la taille des marqueurs.], [Type: scalaire numerique fini. Valeurs prises en charge: valeurs scalaires positives finies.], 
  [#strong[MarkerStyle];], [definit le style des marqueurs.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'o', '+', '\*', '.', 'x' et autres symboles de marqueur.], 
  [#strong[OuterPosition];], [stocke le rectangle exterieur du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[Parent];], [stocke le parent graphique.], [Type: handle graphique scalaire. Valeurs prises en charge: handle parent graphique valide.], 
  [#strong[PickableParts];], [controle les parties visibles selectionnables.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Position];], [stocke le rectangle de position du graphique.], [Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies \[left bottom width height\].], 
  [#strong[PositionConstraint];], [choisit le rectangle preserve pendant la disposition.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'outerposition', 'innerposition'.], 
  [#strong[Selected];], [controle l'etat de selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controle l'affichage de la selection.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SourceTable];], [stocke la table utilisee pour creer le graphique.], [Type: table ou valeur vide. Valeurs prises en charge: \[\] ou table fournie a parallelplot.], 
  [#strong[Tag];], [stocke un texte utilisateur.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[Title];], [definit le titre du graphique.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: tout vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[Type];], [identifie le type d'objet graphique.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'parallelplot'.], 
  [#strong[Units];], [definit les unites des proprietes de position.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'.], 
  [#strong[UserData];], [stocke les donnees utilisateur associees au graphique.], [Type: toute valeur Nelson. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [controle la visibilite du graphique.], [Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
)

== Exemple

Inspecter les proprietes de parallelplot.

``````matlab
h = parallelplot([1 10 100; 2 20 50; 3 30 0]);
properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.parallelplot>)[parallelplot];.
