# imregconfig

Cree des structures d'optimiseur et de metrique pour le recalage d'images.

## 📝 Syntaxe

- [optimizer, metric] = imregconfig(modality)

## 📥 Argument d'entrée

- modality - Nom de modalite de recalage : monomodal ou multimodal.

## 📤 Argument de sortie

- optimizer - Structure avec les parametres de recherche simples utilises par imregtform, dont AngleSearch, ScaleSearch et ShearSearch.
- metric - Structure de metrique. Monomodal utilise MeanSquares. Multimodal utilise Correlation.

## 📄 Description


imregconfig retourne des structures legeres d'optimiseur et de metrique pour le recalage d'images. Ces structures sont des valeurs Nelson ordinaires et peuvent etre modifiees avant imregtform ou imregister.

## 💡 Exemple

Creer des reglages de recalage

```matlab
[optimizer, metric] = imregconfig('monomodal');
optimizer.AngleSearch = 10;
optimizer.ShearSearch = 0.1;
```


## 🔗 Voir aussi

[imregtform](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregtform.md), [imregister](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregister.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
