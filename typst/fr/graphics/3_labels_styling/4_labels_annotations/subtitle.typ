#import "../../nelson_help.typ": *

= subtitle <graphics:3_labels_styling.4_labels_annotations.subtitle>

Ajouter un sous-titre.

== Syntaxe

- #raw("subtitle(text)");
- #raw("subtitle(target, text)");
- #raw("subtitle(..., propertyName, propertyValue)");
- #raw("go = subtitle(...)");

== Argument d'entrée

/ text: Texte a afficher : vecteur de caracteres, chaine scalaire, tableau de chaines ou tableau de cellules de vecteurs de caracteres.
/ target: Objet graphique axes ou tiled layout, ou tableau d'objets de la meme classe prise en charge.
/ propertyName: Nom de propriete de l'objet sous-titre.
/ propertyValue: Valeur de propriete de l'objet sous-titre.

== Argument de sortie

/ go: Objet graphique de sous-titre, ou tableau d'objets graphiques de sous-titre.

== Description

#strong[subtitle]; ajoute un sous-titre aux axes courants ou a la cible specifiee.

 Lorsque la cible possede deja un objet texte de sous-titre, #strong[subtitle]; met a jour et renvoie cet objet.

 Pour les cibles axes, le texte du sous-titre utilise les unites data et suit l'alignement horizontal du titre des axes.

 Pour les cibles tiled layout, l'objet renvoye expose les proprietes de texte de tiled layout.

 Les tableaux de chaines et les tableaux de cellules de vecteurs de caracteres sont stockes comme plusieurs lignes de sous-titre.

 Les paires nom de propriete et valeur sont appliquees a l'objet sous-titre.

 La propriete #strong[Visible]; est heritee des axes parents lorsqu'un nouvel objet texte de sous-titre est cree.


== Exemples

Ajouter un sous-titre a un graphique.

``````matlab
f = figure();
plot([0 2], [1 5]);
title('Droite');
subtitle('Pente = 2, ordonnee a l''origine = 1');
``````


#align(center)[#image("subtitle.svg")]
Definir les proprietes du sous-titre.

``````matlab
f = figure();
plot([0 2], [1 5]);
title('Droite');
subtitle('Pente = 2, ordonnee a l''origine = 1', 'Color', 'red');
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];, #nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
