# subtitle

Ajouter un sous-titre.

## 📝 Syntaxe

- subtitle(text)
- subtitle(target, text)
- subtitle(..., propertyName, propertyValue)
- go = subtitle(...)

## 📥 Argument d'entrée

- text - Texte a afficher : vecteur de caracteres, chaine scalaire, tableau de chaines ou tableau de cellules de vecteurs de caracteres.
- target - Objet graphique axes ou tiled layout, ou tableau d'objets de la meme classe prise en charge.
- propertyName - Nom de propriete de l'objet sous-titre.
- propertyValue - Valeur de propriete de l'objet sous-titre.

## 📤 Argument de sortie

- go - Objet graphique de sous-titre, ou tableau d'objets graphiques de sous-titre.

## 📄 Description

<b>subtitle</b> ajoute un sous-titre aux axes courants ou a la cible specifiee.

Lorsque la cible possede deja un objet texte de sous-titre, <b>subtitle</b> met a jour et renvoie cet objet.

Pour les cibles axes, le texte du sous-titre utilise les unites data et suit l'alignement horizontal du titre des axes.

Pour les cibles tiled layout, l'objet renvoye expose les proprietes de texte de tiled layout.

Les tableaux de chaines et les tableaux de cellules de vecteurs de caracteres sont stockes comme plusieurs lignes de sous-titre.

Les paires nom de propriete et valeur sont appliquees a l'objet sous-titre.

La propriete <b>Visible</b> est heritee des axes parents lorsqu'un nouvel objet texte de sous-titre est cree.

## 💡 Exemples

Ajouter un sous-titre a un graphique.

```matlab
f = figure();
plot([0 2], [1 5]);
title('Droite');
subtitle('Pente = 2, ordonnee a l''origine = 1');
```

<img src="subtitle.svg" align="middle"/>
Definir les proprietes du sous-titre.

```matlab
f = figure();
plot([0 2], [1 5]);
title('Droite');
subtitle('Pente = 2, ordonnee a l''origine = 1', 'Color', 'red');
```

## 🔗 Voir aussi

[title](../../../graphics/3_labels_styling/4_labels_annotations/title.md), [text](../../../graphics/3_labels_styling/4_labels_annotations/text.md), [tiledlayout](../../../graphics/2_graphics_objects/2_layout_objects/tiledlayout.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
