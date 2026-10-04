# worldToSubscript

Convertit des coordonnees monde en indices d'image.

## 📝 Syntaxe

- [row, column] = worldToSubscript(R, xWorld, yWorld)
- [row, column, plane] = worldToSubscript(R, xWorld, yWorld, zWorld)

## 📥 Argument d'entrée

- R - Structure de reference spatiale 2-D ou 3-D creee par imref2d ou imref3d.
- xWorld, yWorld, zWorld - Coordonnees monde. La coordonnee Z est utilisee uniquement avec les references 3-D.

## 📤 Argument de sortie

- row, column, plane - Indices les plus proches. Les points hors de l'image referencee renvoient des indices NaN.

## 📄 Description

Convertit les coordonnees monde en indices ligne, colonne et eventuellement plan les plus proches.

## 💡 Exemple

Convertir des coordonnees monde en ligne et colonne

```matlab
R = imref2d([2 3], 2, 3);
[row, column] = worldToSubscript(R, [2 8], [3 6])
```

## 🔗 Voir aussi

[worldToIntrinsic](../../../image_processing/worldToIntrinsic.md), [sizesMatch](../../../image_processing/sizesMatch.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
