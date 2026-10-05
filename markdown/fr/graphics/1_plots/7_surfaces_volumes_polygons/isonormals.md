# isonormals

Calculer les normales des sommets d'une isosurface.

## 📝 Syntaxe

- n = isonormals(X, Y, Z, V, vertices)
- n = isonormals(V, vertices)
- n = isonormals(V, p)
- n = isonormals(X, Y, Z, V, p)
- n = isonormals(..., 'negate')
- isonormals(V, p)

## 📥 Argument d'entrée

- X, Y, Z - Vecteurs de grille ou tableaux 3-D de meme taille que V.
- V - Donnees volumiques 3-D reelles numeriques.
- vertices, p - Matrice de sommets N-by-3 ou handle de patch.

## 📤 Argument de sortie

- n - Vecteurs normaux N-by-3 interpoles depuis le gradient du volume.

## 📄 Description


<b>isonormals</b> calcule les normales aux sommets d'une isosurface. Avec un handle de patch et sans sortie, la propriete VertexNormals est definie.


## 🔗 Voir aussi

[isosurface](../../../graphics/1_plots/7_surfaces_volumes_polygons/isosurface.md), [smooth3](../../../graphics/1_plots/7_surfaces_volumes_polygons/smooth3.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).