# streamribbon

Afficher des chemins de courant avec un style ruban.

## 📝 Syntaxe

- streamribbon(U, V, W, sx, sy, sz)
- streamribbon(X, Y, Z, U, V, W, sx, sy, sz)
- streamribbon(vertices, twistangle)
- streamribbon(..., width)
- h = streamribbon(...)

## 📄 Description


<b>streamribbon</b> affiche des chemins de courant 3-D sous forme de surfaces ruban. 

<b>streamribbon(vertices, twistangle)</b> utilise des sommets de lignes de courant pre-calcules et un tableau de cellules d'angles de torsion. Les handles retournes sont des objets surface.

## 💡 Exemple

Afficher un chemin avec un style ruban.

```matlab
t = 0:.15:2;
vertices = {[cos(t)' sin(t)' t']};
twistangle = {cos(t)'};
streamribbon(vertices, twistangle);
```
<img src="streamribbon_1.svg" align="middle"/>


## 🔗 Voir aussi

[streamline](../../../graphics/1_plots/5_vector_fields/streamline.md), [streamtube](../../../graphics/1_plots/5_vector_fields/streamtube.md).