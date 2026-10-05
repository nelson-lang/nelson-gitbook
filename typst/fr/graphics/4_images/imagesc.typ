#import "../nelson_help.typ": *

= imagesc <graphics:4_images.imagesc>

Affiche une image à partir d'un tableau avec des couleurs mises à l'échelle.

== Syntaxe

- #raw("imagesc()");
- #raw("imagesc(C)");
- #raw("imagesc(X, Y, C)");
- #raw("imagesc('CData', C)");
- #raw("imagesc('XData', X, 'YData', Y,'CData', C)");
- #raw("imagesc(..., propertyName, propertyValue)");
- #raw("imagesc(parent, ...)");
- #raw("go = imagesc(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: Un objet graphique scalaire : conteneur parent, spécifié comme un axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type image.

== Description

#strong[imagesc]; affiche les données C sous forme d'image. Cette image est colorée à l'aide de la palette de couleurs de la figure courante.

 Propriétés :

 

#table(
  columns: 2,
  [Propriété], [Description], 
  [#strong[AlphaData];], [Données de transparence : scalaire, tableau de même taille que CData, ou 1 (par défaut).], 
  [#strong[AlphaDataMapping];], [Méthode de mappage des données alpha.], 
  [#strong[CData];], [Données de couleur de l'image : vecteur ou matrice, tableau 3D de triplets RGB.], 
  [#strong[CDataMapping];], [Méthode de mappage des couleurs : 'direct' ou 'scaled' (par défaut).], 
  [#strong[Children];], [\[\].], 
  [#strong[Parent];], [Parent : objet axes.], 
  [#strong[Tag];], [Identifiant de l'objet : chaîne scalaire, vecteur de caractères, ' ' (par défaut).], 
  [#strong[Type];], [Type d'objet graphique : 'surface'.], 
  [#strong[UserData];], [Données utilisateur : tableau ou \[\] (par défaut).], 
  [#strong[Visible];], [État de visibilité : 'off' ou 'on' (par défaut).], 
  [#strong[XData];], [Placement sur l'axe x : vecteur à deux éléments, scalaire, \[1 size(CData, 1)\] (par défaut).], 
  [#strong[YData];], [Placement sur l'axe y : vecteur à deux éléments, scalaire, \[1 size(CData, 2)\] (par défaut).], 
  [#strong[CreateFcn];], [Callback (fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet.], 
  [#strong[DeleteFcn];], [Callback (fonction, chaîne ou cellule) appelée lors de la suppression de l'objet.], 
  [#strong[BeingDeleted];], [Indique que l'objet est en cours de suppression.], 
)

== Exemples

``````matlab
f1 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
``````


#align(center)[#image("imagesc_1.png")]
``````matlab
f2 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
colormap(gray)
``````


#align(center)[#image("imagesc_2.png")]

== Voir aussi

#nlink(<graphics:4_images.image>)[image];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.7.0], [Ajout des callbacks CreateFcn, DeleteFcn.],
  [--], [Ajout de la propriété BeingDeleted.],
)

// Auteur: Allan CORNET
