# intrinsicToWorld

Convertit des coordonnees intrinseques en coordonnees monde.

## 📝 Syntaxe

- [xWorld, yWorld] = intrinsicToWorld(R, xIntrinsic, yIntrinsic)
- [xWorld, yWorld, zWorld] = intrinsicToWorld(R, xIntrinsic, yIntrinsic, zIntrinsic)

## 📥 Argument d'entrée

- R - Structure de reference spatiale 2-D ou 3-D creee par imref2d ou imref3d.
- xIntrinsic, yIntrinsic, zIntrinsic - Coordonnees intrinseques. La coordonnee Z est utilisee uniquement avec les references 3-D.

## 📤 Argument de sortie

- xWorld, yWorld, zWorld - Coordonnees monde correspondant aux coordonnees intrinseques.

## 📄 Description


Convertit les coordonnees intrinseques en coordonnees monde avec les pas de pixel ou de voxel stockes dans la reference spatiale.

## 💡 Exemples

Convertir des coordonnees intrinseques 2-D

```matlab
R = imref2d([2 3], 2, 3);
[xWorld, yWorld] = intrinsicToWorld(R, [1 3], [1 2])
```
Convertir des coordonnees intrinseques 3-D

```matlab
R = imref3d([2 3 4], 2, 3, 4);
[xWorld, yWorld, zWorld] = intrinsicToWorld(R, [1 3], [1 2], [1 4])
```


## 🔗 Voir aussi

[worldToIntrinsic](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/worldToIntrinsic.md), [imref2d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imref2d.md), [imref3d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imref3d.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
