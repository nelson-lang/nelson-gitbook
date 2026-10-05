#import "../../nelson_help.typ": *

= parameterizedfunctionline properties <graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>

Proprietes de l'objet graphique parameterizedfunctionline.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[parameterizedfunctionline];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[AffectAutoLimits];], [met a jour les limites automatiques des axes.], [Type: vecteur numerique fini. Valeurs prises en charge: deux valeurs finies \[min max\].], 
  [#strong[AlignVertexCenters];], [met a jour le rendu au rafraichissement.], [Type: valeur on\/off. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[Annotation];], [met a jour les metadonnees d'annotation.], [Type: objet d'annotation graphique. Valeurs prises en charge: handle d'annotation ou handle vide.], 
  [#strong[BeingDeleted];], [indique l'etat de suppression.], [Type: chaine scalaire. Valeurs prises en charge: 'off' ou 'on'.], 
  [#strong[BusyAction];], [controle la mise en file des callbacks.], [Type: chaine scalaire. Valeurs prises en charge: 'queue' ou 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute sur evenement bouton souris.], [Type: callback. Valeurs prises en charge: \[\], handle de fonction, texte ou cellule callback.], 
  [#strong[Children];], [se met a jour avec le parentage.], [Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Clipping];], [controle le rognage aux limites des axes.], [Type: chaine scalaire. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[Color];], [modifie la couleur de ligne.], [Type: valeur de couleur. Valeurs prises en charge: noms de couleurs, noms courts, triplet RGB, couleur hexadecimale ou 'none'.], 
  [#strong[ColorMode];], [choisit la couleur automatique ou manuelle.], [Type: chaine scalaire. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[ContextMenu];], [attache un menu contextuel.], [Type: handle graphique scalaire. Valeurs prises en charge: \[\] ou handle uicontextmenu.], 
  [#strong[CreateFcn];], [s'execute a la creation de l'objet.], [Type: callback. Valeurs prises en charge: \[\], handle de fonction, texte ou cellule callback.], 
  [#strong[DataTipTemplate];], [met a jour le contenu des infobulles de donnees interactives.], [Type: objet modele d'infobulle ou valeur vide. Valeurs prises en charge: un objet modele d'infobulle ou une valeur vide.], 
  [#strong[DeleteFcn];], [s'execute a la suppression de l'objet.], [Type: callback. Valeurs prises en charge: \[\], handle de fonction, texte ou cellule callback.], 
  [#strong[DisplayName];], [definit le libelle de legende.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire.], 
  [#strong[HandleVisibility];], [controle la recherche de handles.], [Type: chaine scalaire. Valeurs prises en charge: 'on', 'off' ou 'callback'.], 
  [#strong[HitTest];], [controle le test de selection souris.], [Type: chaine scalaire. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[Interruptible];], [controle l'interruption des callbacks.], [Type: chaine scalaire. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[LineJoin];], [modifie les jonctions de segments.], [Type: chaine scalaire. Valeurs prises en charge: 'miter', 'round' ou 'chamfer'.], 
  [#strong[LineStyle];], [modifie le style de ligne.], [Type: chaine scalaire. Valeurs prises en charge: '-', '--', ':', '-.' ou 'none'.], 
  [#strong[LineStyleMode];], [choisit le style automatique ou manuel.], [Type: chaine scalaire. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[LineWidth];], [modifie l'epaisseur de ligne.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[Marker];], [modifie le symbole de marqueur.], [Type: chaine scalaire. Valeurs prises en charge: noms de marqueurs, caracteres de marqueurs ou 'none'.], 
  [#strong[MarkerEdgeColor];], [modifie la couleur de bord de marqueur.], [Type: valeur de couleur. Valeurs prises en charge: couleurs, 'auto', 'none' ou 'flat'.], 
  [#strong[MarkerFaceColor];], [modifie la couleur de face de marqueur.], [Type: valeur de couleur. Valeurs prises en charge: couleurs, 'auto', 'none' ou 'flat'.], 
  [#strong[MarkerIndices];], [selectionne les points marques.], [Type: vecteur d'entiers positifs. Valeurs prises en charge: indices des donnees tracees ou valeur vide.], 
  [#strong[MarkerMode];], [choisit les marqueurs automatiques ou manuels.], [Type: chaine scalaire. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[MarkerSize];], [modifie la taille de marqueur.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie.], 
  [#strong[MeshDensity];], [controle la densite d'echantillonnage.], [Type: entier positif scalaire. Valeurs prises en charge: entier superieur a 1.], 
  [#strong[Parent];], [change le parent de l'objet.], [Type: handle graphique scalaire. Valeurs prises en charge: handle axes ou hggroup.], 
  [#strong[PickableParts];], [selectionne les parties cliquables.], [Type: chaine scalaire. Valeurs prises en charge: 'visible', 'all' ou 'none'.], 
  [#strong[RData];], [met a jour les donnees radiales polaires.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou donnees numeriques finies\/infinies.], 
  [#strong[RDataMode];], [choisit les donnees radiales automatiques ou manuelles.], [Type: chaine scalaire. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[RDataSource];], [stocke le texte source radial.], [Type: valeur texte. Valeurs prises en charge: texte vide ou nom de variable.], 
  [#strong[RVariable];], [stocke le texte de variable radiale.], [Type: valeur texte. Valeurs prises en charge: texte vide ou nom de variable.], 
  [#strong[Selected];], [modifie l'etat de selection.], [Type: chaine scalaire. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[SelectionHighlight];], [controle la surbrillance de selection.], [Type: chaine scalaire. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[SeriesIndex];], [stocke l'ordre de serie.], [Type: entier scalaire. Valeurs prises en charge: valeur entiere finie.], 
  [#strong[SourceTable];], [lie les donnees de l'objet a une table; les proprietes de variables selectionnent les colonnes.], [Type: table. Valeurs prises en charge: table vide ou table fournissant les variables liees.], 
  [#strong[TRange];], [definit l'intervalle d'echantillonnage du parametre.], [Type: vecteur ligne numerique a deux elements. Valeurs prises en charge: intervalle fini croissant \[tmin tmax\].], 
  [#strong[TRangeMode];], [choisit la plage de parametre automatique ou manuelle.], [Type: chaine scalaire. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[Tag];], [stocke un identifiant d'objet.], [Type: valeur texte. Valeurs prises en charge: texte vide ou texte identifiant.], 
  [#strong[ThetaData];], [met a jour les donnees angulaires polaires.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou donnees numeriques finies\/infinies.], 
  [#strong[ThetaDataMode];], [choisit les donnees angulaires automatiques ou manuelles.], [Type: chaine scalaire. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[ThetaDataSource];], [stocke le texte source angulaire.], [Type: valeur texte. Valeurs prises en charge: texte vide ou nom de variable.], 
  [#strong[ThetaVariable];], [stocke le texte de variable angulaire.], [Type: valeur texte. Valeurs prises en charge: texte vide ou nom de variable.], 
  [#strong[Type];], [indique le type d'objet.], [Type: texte en lecture seule. Valeurs prises en charge: 'parameterizedfunctionline'.], 
  [#strong[UserData];], [stocke des donnees utilisateur.], [Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson.], 
  [#strong[Visible];], [controle la visibilite.], [Type: chaine scalaire. Valeurs prises en charge: 'on' ou 'off'.], 
  [#strong[XData];], [stocke les donnees x echantillonnees.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou vecteur numerique ligne\/colonne.], 
  [#strong[XDataMode];], [choisit les donnees x automatiques ou manuelles.], [Type: chaine scalaire. Valeurs prises en charge: 'auto' ou 'manual'.], 
  [#strong[XDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[XFunction];], [stocke la fonction echantillonnee pour x.], [Type: valeur fonction. Valeurs prises en charge: handle de fonction ou valeur vide.], 
  [#strong[XVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YData];], [stocke les donnees y echantillonnees.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou vecteur numerique ligne\/colonne.], 
  [#strong[YDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[YDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[YFunction];], [stocke la fonction echantillonnee pour y.], [Type: valeur fonction. Valeurs prises en charge: handle de fonction ou valeur vide.], 
  [#strong[YVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZData];], [stocke les donnees z echantillonnees.], [Type: vecteur numerique. Valeurs prises en charge: \[\] ou vecteur numerique ligne\/colonne.], 
  [#strong[ZDataMode];], ['auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'.], 
  [#strong[ZDataSource];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
  [#strong[ZFunction];], [stocke la fonction echantillonnee pour z.], [Type: valeur fonction. Valeurs prises en charge: handle de fonction ou valeur vide.], 
  [#strong[ZVariable];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail\/table.], 
)

== Exemple

Inspecter les proprietes de parameterizedfunctionline.

``````matlab
h = fplot(@cos, @sin); properties(h)
``````


== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.fplot>)[fplot];, #nlink(<graphics:1_plots.1_line_plots.fplot3>)[fplot3];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[proprietes de functionline];.
