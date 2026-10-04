# shrinkfaces

Reduire la taille des faces d'un patch.

## 📝 Syntaxe

- shrinkfaces(p, sf)
- nfv = shrinkfaces(p, sf)
- nfv = shrinkfaces(fv, sf)
- nfv = shrinkfaces(faces, vertices, sf)
- [newFaces, newVertices] = shrinkfaces(...)

## 📥 Argument d'entrée

- p - Handle de patch.
- fv - Structure avec les champs faces et vertices.
- sf - Facteur de reduction non negatif. La valeur par defaut est 0.3.

## 📤 Argument de sortie

- nfv, newFaces, newVertices - Faces et sommets reduits avec des sommets non partages.

## 📄 Description

<b>shrinkfaces</b> deplace chaque sommet de face vers le centre de sa face et cree des sommets non partages.

## 🔗 Voir aussi

[isosurface](../../../graphics/1_plots/7_surfaces_volumes_polygons/isosurface.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md).
