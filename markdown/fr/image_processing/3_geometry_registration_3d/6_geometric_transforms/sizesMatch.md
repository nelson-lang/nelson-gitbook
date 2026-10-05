# sizesMatch

Determine si une reference spatiale correspond a une taille d'image.

## 📝 Syntaxe

- tf = sizesMatch(R, image)

## 📥 Argument d'entrée

- R - Structure de reference spatiale 2-D ou 3-D creee par imref2d ou imref3d.
- image - Image ou volume a comparer avec la taille stockee dans la reference spatiale.

## 📤 Argument de sortie

- tf - Scalaire logique vrai si la taille du tableau correspond aux dimensions de la reference spatiale.

## 📄 Description


Compare les dimensions principales de l'image avec le champ ImageSize d'une reference spatiale 2-D ou 3-D.

## 💡 Exemple

Verifier une image RGB avec une reference 2-D

```matlab
R = imref2d([2 3], 2, 3);
tf = sizesMatch(R, zeros(2, 3, 3))
```


## 🔗 Voir aussi

[imref2d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imref2d.md), [imref3d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imref3d.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
