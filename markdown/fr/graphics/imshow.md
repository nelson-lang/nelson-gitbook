# imshow

Affiche une image.

## 📝 Syntaxe

- imshow(filename)
- imshow(img)
- imshow(RGB)
- imshow(img, [low high])
- imshow(img, [])
- imshow(img, map)
- imshow(..., propertyName, propertyValue)
- go = imshow(...)

## 📥 Argument d'entrée

- filename - Vecteur ligne de caractères : nom du fichier de l'image à afficher.
- img - Image en niveaux de gris : matrice.
- RGB - Image en vraies couleurs : tableau m-par-n-par-3.
- [low high] - Plage d'affichage de l'image en niveaux de gris.
- map - Palette de couleurs : matrice c-par-3.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères (pour compatibilité).
- propertyValue - Une valeur (pour compatibilité).

## 📤 Argument de sortie

- go - Un objet graphique : type image.

## 📄 Description

<b>imshow(img)</b> affiche l'image <b>img</b>.

## 💡 Exemple

```matlab
f = figure();
filename = [tempdir, 'apollo_8_earthrise_1968_as08-14-2383.jpg'];
websave(filename, 'https://www.nasa.gov/wp-content/uploads/2025/05/3dmodels-casa-2025-astro.jpg');
h = imshow(filename);

```

## 🔗 Voir aussi

[imread](../graphics/imread.md), [image](../graphics/image.md), [imagesc](../graphics/imagesc.md), [colormap](../graphics/colormap.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
