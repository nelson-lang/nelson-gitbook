#import "../../nelson_help.typ": *

= violinplot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>

Proprietes de l'objet graphique violinplot.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[violinplot];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation utilisees par les outils interactifs.], [Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet annotation associe ou handle graphique vide.], 
  [#strong[BeingDeleted];], [Nelson calcule cette valeur pendant les operations graphiques.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle si un callback interrompant est mis en file ou annule.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute quand l'objet recoit un evenement souris.], [Type: valeur de callback. Valeurs prises en charge: \[\], function handle, vecteur de caracteres, string scalaire ou tableau de callback.], 
  [#strong[Children];], [les operations de parentage mettent a jour ce vecteur.], [Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide.], 
  [#strong[Clipping];], [met a jour le rognage au prochain rafraichissement graphique.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[ColorGroupLayout];], [controle comment les groupes de couleur partagent la largeur disponible.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'grouped', 'overlaid'.], 
  [#strong[ColorGroupWidth];], [definit la largeur normalisee utilisee pour les groupes de couleur.], [Type: scalaire numerique. Valeurs prises en charge: valeurs dans \[0,1\].], 
  [#strong[ColorGroupWidthMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ContextMenu];], [associe le menu utilise par les actions de clic contextuel.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute quand l'objet est cree.], [Type: valeur de callback. Valeurs prises en charge: \[\], function handle, vecteur de caracteres, string scalaire ou tableau de callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu utilise par les data tips interactifs.], [Type: objet data tip template ou handle vide. Valeurs prises en charge: objet data tip template de l'objet graphique ou handle graphique vide.], 
  [#strong[DeleteFcn];], [s'execute quand l'objet est supprime.], [Type: valeur de callback. Valeurs prises en charge: \[\], function handle, vecteur de caracteres, string scalaire ou tableau de callback.], 
  [#strong[DensityDirection];], [selectionne le cote de la position de groupe qui affiche la densite.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'both', 'positive', 'negative'.], 
  [#strong[DensityScale];], [selectionne la regle de normalisation de densite.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'area', 'count', 'width'.], 
  [#strong[DensityValues];], [densite de chaque violon aux #strong[EvaluationPoints];, une colonne par violon. L'affecter passe #strong[DensityValuesMode]; a 'manual'; les valeurs sont alors tracees telles quelles.], [Type: matrice reelle a virgule flottante. Valeurs prises en charge: meme taille que #strong[EvaluationPoints];.], 
  [#strong[DensityValuesMode];], ['auto' calcule #strong[DensityValues]; a partir des donnees; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[DensityWidth];], [definit la largeur maximale du violon en unites de donnees.], [Type: scalaire numerique fini. Valeurs prises en charge: scalaire fini positif.], 
  [#strong[DensityWidthMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[DisplayName];], [met a jour le libelle utilise par les legendes et l'identification.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[EdgeColor];], [definit la couleur du contour et de la marque de mediane.], [Type: valeur de couleur ou mot-cle de mode couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\], couleur hexadecimale, 'none', 'flat' ou 'interp'.], 
  [#strong[EdgeColorMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[EvaluationPoints];], [valeurs ou la densite par noyau est evaluee, une colonne par violon. Par defaut, 100 points de min(y) - 3h a max(y) + 3h (h: largeur de bande). L'affecter passe #strong[EvaluationPointsMode]; a 'manual'.], [Type: matrice reelle a virgule flottante. Valeurs prises en charge: valeurs finies; un vecteur ligne est stocke en colonne.], 
  [#strong[EvaluationPointsMode];], ['auto' calcule #strong[EvaluationPoints]; a partir des donnees; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[FaceAlpha];], [definit la transparence du corps rempli.], [Type: scalaire numerique. Valeurs prises en charge: valeurs dans \[0,1\].], 
  [#strong[FaceColor];], [definit la couleur du corps rempli.], [Type: valeur de couleur ou mot-cle de mode couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans \[0,1\], couleur hexadecimale, 'none', 'flat' ou 'interp'.], 
  [#strong[FaceColorMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[HandleVisibility];], [controle si les fonctions de recherche de handles peuvent trouver l'objet.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[HitTest];], [inclut ou exclut l'objet du test de clic souris.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[Interruptible];], [controle si un callback en cours peut etre interrompu.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LineStyle];], [definit le style de ligne du contour et de la marque de mediane.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: '-', '--', ':', '-.' ou 'none'.], 
  [#strong[LineWidth];], [definit la largeur de ligne du contour et de la marque de mediane.], [Type: scalaire numerique fini. Valeurs prises en charge: scalaire fini positif.], 
  [#strong[Orientation];], [choisit si les valeurs sont affichees verticalement ou horizontalement.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'vertical', 'horizontal'.], 
  [#strong[Parent];], [definit les axes qui possedent l'objet.], [Type: handle graphique scalaire. Valeurs prises en charge: handle axes ou hggroup.], 
  [#strong[PickableParts];], [controle si les parties visibles ou toutes les parties peuvent etre selectionnees.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Selected];], [marque l'objet comme selectionne ou non.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controle l'affichage des poignees de selection.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SeriesIndex];], [stocke l'indice de serie dans l'ordre des couleurs.], [Type: scalaire numerique positif. Valeurs prises en charge: scalaire fini positif.], 
  [#strong[SourceTable];], [stocke la table utilisee pour creer le graphique.], [Type: table ou valeur vide. Valeurs prises en charge: \[\] ou table fournie a violinplot.], 
  [#strong[Tag];], [stocke un texte utilisateur pour identifier l'objet.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[Type];], [identifie le type de l'objet graphique.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'violinplot'.], 
  [#strong[UserData];], [stocke des donnees utilisateur sur l'objet.], [Type: valeur Nelson quelconque. Valeurs prises en charge: toute valeur.], 
  [#strong[Visible];], [affiche ou masque l'objet.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[XData];], [definit les positions de groupe utilisees pour placer les violons.], [Type: vecteur numerique reel. Valeurs prises en charge: valeurs numeriques finies; les valeurs non finies sont ignorees pour le dessin.], 
  [#strong[XDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[XVariable];], [stocke le nom de variable de table utilise pour les donnees x.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
  [#strong[YData];], [definit les valeurs utilisees pour calculer la distribution.], [Type: vecteur numerique reel. Valeurs prises en charge: valeurs numeriques finies; les valeurs non finies sont ignorees pour le dessin.], 
  [#strong[YDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YVariable];], [stocke le nom de variable de table utilise pour les donnees y.], [Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire.], 
)

== Exemple

Inspecter les proprietes de violinplot.

``````matlab
h = violinplot([1 2 2 3]);
props = properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.violinplot>)[violinplot];, #nlink(<handle:properties>)[properties];.
