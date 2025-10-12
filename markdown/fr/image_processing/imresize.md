# imresize

Redimensionne une image par échelle ou taille de sortie

## Syntaxe

- img2 = imresize(img, scale)
- img2 = imresize(img, [numrows numcols])
- [Y, newmap] = imresize(X, map, ...)
- ... = imresize(..., method)
- ... = imresize(..., Name, Value)

## Argument d'entrée

- img - Image à redimensionner, spécifiée comme un tableau numérique ou logique de n'importe quelle dimension. L'entrée doit être non-creuse (nonsparse) et les entrées numériques doivent être réelles.
- scale - Facteur de redimensionnement, spécifié comme un nombre positif ou un vecteur à deux éléments. Si scale est entre 0 et 1, la sortie est plus petite ; si > 1, la sortie est plus grande. imresize applique le même facteur aux lignes et colonnes sauf si un vecteur est fourni.
- [numrows numcols] - Dimensions en lignes et colonnes de l'image de sortie, spécifiées comme un vecteur à deux éléments de nombres positifs. NaN peut être utilisé pour une dimension afin de préserver le ratio d'aspect.
- X - Image indexée à redimensionner, spécifiée comme un tableau numérique réel non-creux d'entiers positifs.
- map - Colormap associée à l'image indexée X, spécifiée comme une matrice c-by-3 avec des valeurs dans [0,1].
- method - Méthode d'interpolation (optionnelle, par défaut : 'bicubic') : doit toujours être le dernier paramètre positionnel.
- Name, Value - Arguments nom-valeur optionnels.

## Argument de sortie

- B - Image redimensionnée, renvoyée sous forme de tableau numérique ou logique du même type que l'image d'entrée A.
- Y - Image indexée redimensionnée, renvoyée sous forme de tableau numérique du même type que l'image indexée d'entrée X.
- newmap - Colormap de l'image indexée redimensionnée Y, renvoyée comme une matrice m-by-3. Par défaut, imresize retourne une nouvelle colormap optimisée. Pour retourner la colormap originale, utilisez l'argument nom-valeur 'Colormap'.

## Description

<p>La fonction imresize redimensionne une image selon un facteur d'échelle ou une taille de sortie spécifiée. Elle prend en charge les images en niveaux de gris, RGB, binaires, ainsi que les images indexées avec colormap.</p>

<p>Pour les images numériques et logiques, la méthode d'interpolation par défaut est 'bicubic'.</p>

<p>Lors du redimensionnement, imresize applique le facteur d'échelle aux dimensions ligne et colonne sauf si un vecteur à deux éléments est spécifié. Si la taille de sortie n'est pas entière, imresize arrondit vers le haut en utilisant la fonction ceil.</p>

<p>Pour les images indexées, imresize retourne par défaut l'image redimensionnée et une colormap optimisée. La colormap originale peut être retournée en utilisant l'argument nom-valeur 'Colormap'.</p>

<p>Les méthodes d'interpolation prises en charge incluent :</p>

            'nearest' : interpolation au plus proche voisin
            'bilinear' : interpolation bilinéaire
            'bicubic' : interpolation bicubique
            'box' : noyau en forme de boîte
            'lanczos2' : noyau Lanczos-2
            'lanczos3' : noyau Lanczos-3

<p>Paires nom-valeur prises en charge :</p>

            'Antialiasing' : true/false (par défaut : true)
            'Colormap' : 'optimized' (par défaut) ou 'original' (image indexée uniquement)
            'Dither' : true (par défaut) ou false (image indexée uniquement)

<p>Limitations :</p>

            L'entrée doit être non-creuse (nonsparse) et réelle pour les images numériques.
            Pour de grands facteurs d'échelle, la taille de l'image de sortie peut être significativement plus grande que l'entrée.
            L'interpolation bicubique peut produire des valeurs de pixels en dehors de la plage d'origine.

## Exemple

imresize example

```matlab
filename = [tempdir, 'apollo_8_earthrise_1968_as08-14-2383.jpg'];
websave(filename, 'https://www.nasa.gov/wp-content/uploads/2025/05/3dmodels-casa-2025-astro.jpg');

im = imread(filename);
size(im)

im1 = imresize(im, 0.05, 'bicubic');
size(im1)

figure;

subplot(1,2,1);          % 1 row, 2 columns, first subplot
image(im);
title('Original Image');

subplot(1,2,2);          % second subplot
image(im1);
title('Resized Image');
```

<img src="imresize_1.png" align="middle"/>

## Voir aussi

[imrotate](../image_processing/imrotate.md), [imshow](../image_processing/imshow.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.15.0  | version initiale |

## Auteur

Allan CORNET
