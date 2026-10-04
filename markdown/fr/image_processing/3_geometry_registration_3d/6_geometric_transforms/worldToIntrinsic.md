# worldToIntrinsic

Convertit des coordonnees monde en coordonnees intrinseques.

## 📝 Syntaxe

- [xIntrinsic, yIntrinsic] = worldToIntrinsic(R, xWorld, yWorld)
- [xIntrinsic, yIntrinsic, zIntrinsic] = worldToIntrinsic(R, xWorld, yWorld, zWorld)

## 📥 Argument d'entrée

- R - Structure de reference spatiale 2-D ou 3-D creee par imref2d ou imref3d.
- xWorld, yWorld, zWorld - Coordonnees monde. La coordonnee Z est utilisee uniquement avec les references 3-D.

## 📤 Argument de sortie

- xIntrinsic, yIntrinsic, zIntrinsic - Coordonnees intrinseques correspondant aux coordonnees monde.

## 📄 Description

Convertit les coordonnees monde en coordonnees intrinseques. Les coordonnees hors limites sont extrapolees.

## 💡 Exemple

Convertir des coordonnees monde 2-D

```matlab
R = imref2d([2 3], 2, 3);
[xIntrinsic, yIntrinsic] = worldToIntrinsic(R, [2 6], [3 6])
```

## 🔗 Voir aussi

[intrinsicToWorld](../../../image_processing/intrinsicToWorld.md), [worldToSubscript](../../../image_processing/worldToSubscript.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
