# surf2patch

Convertit des données de surface en données de patch.

## 📝 Syntaxe

- fvc = surf2patch(Z)
- fvc = surf2patch(X, Y, Z)
- fvc = surf2patch(X, Y, Z, C)
- fvc = surf2patch(h)
- fvc = surf2patch(..., 'triangles')
- [F, V] = surf2patch(...)
- [F, V, C] = surf2patch(...)

## 📥 Argument d'entrée

- X, Y, Z - les coordonnées de la surface. X et Y peuvent être des vecteurs ou des matrices ; Z est une matrice d'au moins deux lignes et deux colonnes.
- C - les données de couleur ; par défaut Z si omis.
- h - un objet surface dont les données sont converties.

## 📤 Argument de sortie

- fvc - une structure avec les champs 'faces', 'vertices' et 'facevertexcdata', utilisable directement par <b>patch</b>.
- F, V, C - les faces, les sommets et les données de couleur renvoyés séparément.

## 📄 Description


<b>surf2patch</b> convertit la géométrie d'une surface en faces et sommets d'un patch. La grille d'une surface <b>(m)</b>-par-<b>(n)</b>devient <b>(m-1)\*(n-1)</b> faces quadrilatérales (ou deux fois plus de faces triangulaires avec l'option <b>'triangles'</b>). 

Appelée avec une seule sortie, le résultat est une structure qui peut être passée directement à <b>patch</b> ; avec plusieurs sorties, les faces, les sommets et les données de couleur sont renvoyés séparément.

## 💡 Exemple



```matlab
f = figure();
colormap(jet);
patch(surf2patch(peaks(20)), 'FaceColor', 'interp', 'EdgeColor', 'none');
view(3);
axis equal
```


## 🔗 Voir aussi

[surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
