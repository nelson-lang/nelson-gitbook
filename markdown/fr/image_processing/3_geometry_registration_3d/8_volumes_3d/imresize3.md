# imresize3

Redimensionner un volume 3-D

## 📝 Syntaxe

- B = imresize3(V, scale)
- B = imresize3(V, [numrows numcols numplanes])
- B = imresize3(\_\_, method)
- B = imresize3(\_\_, Name, Value)

## 📥 Argument d'entrée

- V - Volume d'entree, tableau 3-D reel, non sparse, numerique ou logique.
- scale - Facteur de redimensionnement scalaire positif et fini applique aux lignes, colonnes et plans.
- [numrows numcols numplanes] - Taille de sortie du volume. Les valeurs sont arrondies en dimensions entieres positives.
- method - Methode d'interpolation : 'linear' par defaut, ou 'nearest'.
- Name, Value - Les options prises en charge sont 'Method' et 'Antialiasing'. L'option antialiasing est analysee pour compatibilite.

## 📤 Argument de sortie

- B - Volume redimensionne, renvoye avec la meme classe que V.

## 📄 Description


<b>imresize3</b> redimensionne des donnees d'image volumetriques par facteur scalaire ou vers une taille de sortie explicite a trois elements. 

La methode linear utilise une interpolation trilineaire separable. La methode nearest utilise l'echantillon le plus proche et preserve exactement les volumes logiques.

## 💡 Exemple

Redimensionner un volume synthetique et afficher une tranche centrale.

```matlab
[X, Y, Z] = meshgrid(linspace(-1, 1, 48), linspace(-1, 1, 40), linspace(-1, 1, 20));
V = exp(-6 * (X .^ 2 + Y .^ 2 + Z .^ 2));
B = imresize3(V, [64 64 32], 'linear');
figure;
imshow(B(:, :, 16), []);
title('Resized central slice');
```
<img src="imresize3_1.png" align="middle"/>


## 🔗 Voir aussi

[imgaussfilt3](../../../image_processing/3_geometry_registration_3d/8_volumes_3d/imgaussfilt3.md), [imresize](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imresize.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
