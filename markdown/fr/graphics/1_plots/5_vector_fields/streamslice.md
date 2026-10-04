# streamslice

Afficher la direction d'un champ vectoriel sur un plan.

## 📝 Syntaxe

- streamslice(U, V)
- streamslice(X, Y, U, V)
- streamslice(X, Y, Z, U, V, W, sx, sy, sz)
- streamslice(parent, ...)
- h = streamslice(...)
- [vertices, arrowVertices] = streamslice(...)

## 📄 Description

<b>streamslice</b> affiche la direction d'un champ vectoriel au moyen d'objets line pour les chemins de courant et les fleches de direction.

Avec deux sorties, <b>streamslice</b> retourne des tableaux de cellules de sommets de lignes de courant et de sommets de fleches au lieu de tracer.

## 💡 Exemple

Afficher la direction dans un champ 2-D.

```matlab
[x, y] = meshgrid(-2:2, -2:2);
streamslice(x, y, -y, x);
```

<img src="streamslice_1.svg" align="middle"/>

## 🔗 Voir aussi

[streamline](../../../graphics/1_plots/5_vector_fields/streamline.md), [quiver](../../../graphics/1_plots/5_vector_fields/quiver.md).
