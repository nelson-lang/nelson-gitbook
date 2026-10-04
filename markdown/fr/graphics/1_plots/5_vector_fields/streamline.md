# streamline

Afficher des lignes de courant depuis un champ vectoriel.

## 📝 Syntaxe

- streamline(U, V, sx, sy)
- streamline(vertices)
- streamline(X, Y, U, V, sx, sy)
- streamline(X, Y, Z, U, V, W, sx, sy, sz)
- streamline(..., options)
- streamline(parent, ...)
- h = streamline(...)

## 📄 Description

<b>streamline</b> trace des chemins dans des champs vectoriels 2-D ou 3-D depuis les points de depart fournis.

<b>streamline(vertices)</b> trace des sommets de lignes de courant pre-calcules fournis sous forme de tableau de cellules. Chaque cellule contient un tableau numerique N-by-2 ou N-by-3.

L'entree optionnelle <b>options</b> vaut <b>[stepsize]</b> ou <b>[stepsize, maxvert]</b>. <b>stepsize</b> se compte en cellules de grille et vaut 0.1 par defaut. <b>maxvert</b> est le nombre maximal de sommets a produire, point de depart compris, et vaut 500 par defaut.

## 💡 Exemple

Tracer une ligne de courant 2-D.

```matlab
[x, y] = meshgrid(-2:2, -2:2);
streamline(x, y, -y, x, 0, 0);
```

<img src="streamline_1.svg" align="middle"/>

## 🔗 Voir aussi

[stream2](../../../graphics/1_plots/5_vector_fields/stream2.md), [stream3](../../../graphics/1_plots/5_vector_fields/stream3.md), [streamslice](../../../graphics/1_plots/5_vector_fields/streamslice.md), [quiver](../../../graphics/1_plots/5_vector_fields/quiver.md).
