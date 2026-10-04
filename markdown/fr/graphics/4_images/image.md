# image

Affiche une image à partir d'un tableau.

## 📝 Syntaxe

- image()
- image(C)
- image(X, Y, C)
- image('CData', C)
- image('XData', X, 'YData', Y,'CData', C)
- image(..., propertyName, propertyValue)
- image(parent, ...)
- go = image(...)

## 📥 Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - Un objet graphique scalaire : conteneur parent, spécifié comme un axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- go - Un objet graphique : type image.

## 📄 Description

<b>image</b> affiche les données C sous forme d'image.

Voir [proprietes de image](../../graphics/2_graphics_objects/4_properties/nelson.graphics.image.properties.md) pour la liste complete des proprietes.

## 💡 Exemples

```matlab
f = figure();
L = linspace(0, 1);
R = L' * L;
G = L' * (L .^ 2);
B = L' * (0 *L + 1);
C(:, :, 1) = G;
C(:, :, 2) = G;
C(:, :, 3) = B;
im = image(C)
```

<img src="image_1.svg" align="middle"/>

```matlab
f = figure();
image();
```

<img src="image_2.svg" align="middle"/>

## 🔗 Voir aussi

[proprietes de image](../../graphics/2_graphics_objects/4_properties/nelson.graphics.image.properties.md), [imagesc](../../graphics/4_images/imagesc.md), [colormap](../../graphics/3_labels_styling/2_color_styling/colormaps/colormap.md).

## 🕔 Historique

| Version | 📄 Description                            |
| ------- | ----------------------------------------- |
| 1.0.0   | version initiale                          |
| 1.7.0   | Ajout des callbacks CreateFcn, DeleteFcn. |
| --      | Ajout de la propriété BeingDeleted.       |

<!--
## 👤 Auteur

Allan CORNET
-->
