# interpn

Interpolation de donnees grillees N-D au format ndgrid

## 📝 Syntaxe

- Vq = interpn(X1, X2, ..., Xn, V, Xq1, Xq2, ..., Xqn)
- Vq = interpn(V, Xq1, Xq2, ..., Xqn)
- Vq = interpn(V)
- Vq = interpn(V, k)
- Vq = interpn(..., method)
- Vq = interpn(..., method, extrapval)

## 📥 Argument d'entrée

- X1, ..., Xn - Points de grille : vecteurs ou tableaux ndgrid.
- V - Valeurs : tableau reel ou complexe. Les dimensions supplementaires representent plusieurs jeux de donnees sur la meme grille.
- Xq1, ..., Xqn - Points de requete.
- method - 'linear', 'nearest', 'pchip', 'cubic', 'makima' ou 'spline'. PCHIP est reserve au 1-D.

## 📤 Argument de sortie

- Vq - Valeurs interpolees.

## 📄 Description

<b>interpn</b> interpole des donnees grillees N-D avec les conventions ndgrid. La grille par defaut est 1:size(V,i) dans chaque dimension.

Les methodes cubiques utilisent un stencil natif tensoriel a quatre points, avec repli lineaire sur les dimensions qui ont moins de quatre echantillons. PCHIP reste reserve a la syntaxe interpn 1-D.

<b>interpn(V)</b> et <b>interpn(V,k)</b> raffinent la grille par defaut. Les tableaux de requete de meme taille sont traites comme des points disperses; des vecteurs d'orientations mixtes definissent une grille complete.

## 💡 Exemples

```matlab
V = [1 2; 3 4];
Vq = interpn(V, 1.5, 1.5)
```

```matlab
x = [10 20];
y = [1 3];
[X,Y] = ndgrid(x, y);
V = [1 2; 3 4];
Vq = interpn(X, Y, V, 15, 2)
```

```matlab
V = [1 2; 3 4];
Vq = interpn(V, 1)
```

```matlab
V = reshape(1:16, [2 2 2 2]);
Vq = interpn(V, 1.5, 1.5, 1.5, 1.5)
```

## 🔗 Voir aussi

[interp1](../special_functions/interp1.md), [interp2](../special_functions/interp2.md), [interp3](../special_functions/interp3.md), [ndgrid](../elementary_functions/ndgrid.md).

<!--
## 👤 Auteur

Allan CORNET
-->
