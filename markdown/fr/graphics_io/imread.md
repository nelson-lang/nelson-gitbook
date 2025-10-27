# imread

Lit une image à partir d'un fichier graphique.

## 📝 Syntaxe

- A = imread(filename)
- [A, map] = imread(filename)
- [A, map, transparency] = imread(filename)

## 📥 Argument d'entrée

- filename - a vecteur ligne de caractères ou chaîne scalaire : nom du fichier graphique.

## 📤 Argument de sortie

- A - Données d'image : tableau.
- map - Colormap : matrice m-by-3.
- transparency - Information de transparence : matrice.

## 📄 Description

<b>imread</b> lit les données d'image du fichier donné et les charge dans une matrice.

| Format | Description |
| ------ | ----------- |

|
|
|
|
|
|
|
|
|
|
|
|

## 💡 Exemple

```matlab
f = figure();
filename = [tempdir, 'ngc6543a.gif'];
websave(filename, 'https://solarviews.com/raw/ds/ngc6543a.gif');
img = imread(filename);
imagesc(img);
```

<img src="imread.png" align="middle"/>

## 🔗 Voir aussi

[imagesc](../graphics/imagesc.md), [imformats](../graphics_io/imformats.md).

## 🕔 Historique

| Version | 📄 Description          |
| ------- | ----------------------- |
| 1.0.0   | version initiale        |
| 1.13.0  | pcx, tiff formats added |

## 👤 Auteur

Allan CORNET
