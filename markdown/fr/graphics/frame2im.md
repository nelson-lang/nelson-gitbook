# frame2im

Récupère les données d'image d'une image vidéo.

## Syntaxe

- RGB = frame2im(F)
- [X, map] = frame2im(F)

## Argument d'entrée

- F - une structure : image vidéo, représentée comme une structure avec deux champs : cdata : un tableau de uint8 stockant les données de l'image. colormap : la palette de couleurs. Ce champ est vide ([]) pour les images truecolor (RGB). Une structure d'image vidéo peut être créée avec les fonctions im2frame et getframe.

## Argument de sortie

- RGB - Tableau numérique m×n×3 : image truecolor (uint8).
- X - Matrice numérique m×n : image indexée (uint8).
- map - Matrice numérique c×3 : palette de couleurs correspondant à l'image indexée X, retournée comme une matrice c×3 avec des valeurs dans l'intervalle [0, 1]. Chaque ligne représente un triplet RGB définissant les composantes rouge, verte et bleue d'une couleur de la palette.

## Description

<p>
            RGB = frame2im(F) extrait l'image truecolor (RGB) de l'image vidéo F.</p>

<p>
            [X, map] = frame2im(F) récupère l'image indexée X et sa palette de couleurs associée map à partir de l'image vidéo F.</p>

## Exemple

```matlab
f = figure();
s = surf(peaks);
F = getframe(f)
RGB = frame2im(F);
figure;
imshow(RGB);
```

## Voir aussi

[im2frame](../graphics/im2frame.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.13.0  | version initiale |

## Auteur

Allan CORNET
