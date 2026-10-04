# imref3d

Cree une structure de reference spatiale 3-D.

## 📝 Syntaxe

- R = imref3d()
- R = imref3d(imageSize)
- R = imref3d(imageSize, pixelExtentInWorldX, pixelExtentInWorldY, pixelExtentInWorldZ)
- R = imref3d(imageSize, xWorldLimits, yWorldLimits, zWorldLimits)

## 📥 Argument d'entrée

- imageSize - Vecteur d'entiers positifs qui definit la taille du volume en lignes, colonnes et plans.
- pixelExtentInWorldX, pixelExtentInWorldY, pixelExtentInWorldZ - Tailles de voxel scalaires positives et finies en coordonnees monde.
- xWorldLimits - Deux valeurs finies croissantes qui definissent les limites monde selon les colonnes.
- yWorldLimits - Deux valeurs finies croissantes qui definissent les limites monde selon les lignes.
- zWorldLimits - Deux valeurs finies croissantes qui definissent les limites monde selon les plans.

## 📤 Argument de sortie

- R - Structure de reference spatiale 3-D avec taille d'image, limites intrinseques, limites monde, etendues monde et tailles de voxels.

## 📄 Description

Cree une structure de reference spatiale 3-D avec taille d'image, limites monde, limites intrinseques, etendues monde et tailles de voxels.

## 💡 Exemples

Creer une grille de volume referencee

```matlab
R = imref3d([32 40 12], [0.5 40.5], [0.5 32.5], [10.5 22.5]);
R.PixelExtentInWorldZ
```

Creer une reference de volume depuis les tailles de voxel

```matlab
R = imref3d([2 3 4], 2, 3, 4);
R.XWorldLimits
R.YWorldLimits
R.ZWorldLimits
```

## 🔗 Voir aussi

[imref2d](../../../image_processing/imref2d.md), [affine3d](../../../image_processing/affine3d.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
