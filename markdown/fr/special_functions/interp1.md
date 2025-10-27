# interp1

Interpolation linéaire de données 1-D

## 📝 Syntaxe

- vq = interp1(x, v, xq)
- vq = interp1(x, v, xq, 'linear')
- vq = interp1(v, xq)
- vq = interp1(v, xq, 'linear')

## 📥 Argument d'entrée

- x - Points d'échantillonnage : vecteur.
- v - Valeurs d'échantillonnage : vecteur, matrice.
- xq - Points de requête : scalaire, vecteur, matrice.

## 📤 Argument de sortie

- vq - Valeurs interpolées : scalaire, vecteur, matrice.

## 📄 Description

<b>vq = interp1(x, v, xq)</b> retourne les valeurs interpolées d'une fonction 1-D à des points de requête spécifiques en utilisant l'interpolation linéaire.

## 📚 Bibliographie

de Boor, C., A Practical Guide to Splines, Springer-Verlag, 1978.

## 💡 Exemple

```matlab
f = figure();
v = [0  1.41  2  1.41  0  -1.41  -2  -1.41 0];
xq = 1.5:8.5;
vq = interp1(v,xq);
plot(1:9, v, 'o', xq, vq, '*');
legend('v','vq');
```

<img src="interp1.svg" align="middle"/>

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
