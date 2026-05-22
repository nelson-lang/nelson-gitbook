# interp2

Interpolation de donnees grillees 2-D au format meshgrid

## 📝 Syntaxe

- Vq = interp2(X, Y, V, Xq, Yq)
- Vq = interp2(V, Xq, Yq)
- Vq = interp2(V)
- Vq = interp2(V, k)
- Vq = interp2(..., method)
- Vq = interp2(..., method, extrapval)

## 📥 Argument d'entrée

- X, Y - Points de grille : vecteurs ou tableaux meshgrid.
- V - Valeurs : matrice reelle ou complexe.
- Xq, Yq - Points de requete.
- method - 'linear', 'nearest', 'cubic', 'makima' ou 'spline'.
- extrapval - Valeur scalaire retournee hors du domaine.

## 📤 Argument de sortie

- Vq - Valeurs interpolees. Avec des vecteurs de requete d'orientations mixtes, les lignes suivent Yq et les colonnes Xq.

## 📄 Description

<b>interp2</b> interpole des donnees grillees 2-D avec les conventions meshgrid. La grille par defaut est X=1:size(V,2), Y=1:size(V,1).

<b>interp2(V)</b> raffine la grille une fois. <b>interp2(V,k)</b> insere 2^k-1 points interpoles entre les echantillons; k=0 retourne V.

Les vecteurs de grille doivent etre strictement monotones. Les valeurs complexes sont interpolees en separant parties reelle et imaginaire. Sans extrapval, les requetes hors domaine retournent NaN pour linear, nearest et cubic; makima et spline extrapolent par defaut.

Les methodes cubiques N-D utilisent un stencil natif tensoriel a quatre points, avec repli lineaire sur les dimensions qui ont moins de quatre echantillons.

## 💡 Exemples

```matlab
V = [1 2; 3 4];
Vq = interp2(V, 1.5, 1.5)
```

```matlab
V = [1 2; 3 4];
Vq = interp2(V, 1)
```

```matlab
V = [1 2; 3 4];
Vq = interp2(V, 0, 1.5, 'linear', -1)
```

```matlab
[X,Y] = meshgrid(-3:3);
V = peaks(X,Y);
[Xq,Yq] = meshgrid(-3:0.5:3);
Vq = interp2(X,Y,V,Xq,Yq,'linear');
```

## 🔗 Voir aussi

[interp1](../special_functions/interp1.md), [interp3](../special_functions/interp3.md), [interpn](../special_functions/interpn.md), [meshgrid](../elementary_functions/meshgrid.md).

<!--
## 👤 Auteur

Allan CORNET
-->
