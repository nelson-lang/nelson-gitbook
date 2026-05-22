# interp1

Interpolation de donnees 1-D

## 📝 Syntaxe

- vq = interp1(x, v, xq)
- vq = interp1(x, v, xq, method)
- vq = interp1(x, v, xq, method, extrapolation)
- vq = interp1(v, xq)
- vq = interp1(v, xq, method)
- vq = interp1(v, xq, method, extrapolation)
- pp = interp1(x, v, method, 'pp')

## 📥 Argument d'entrée

- x - Points d'echantillonnage : vecteur.
- v - Valeurs d'echantillonnage : vecteur, matrice ou tableau.
- xq - Points de requete : scalaire, vecteur, matrice ou tableau.
- method - Methode : 'linear', 'nearest', 'next', 'previous', 'pchip', 'cubic', 'makima' ou 'spline'.
- extrapolation - 'extrap' ou valeur scalaire.

## 📤 Argument de sortie

- vq - Valeurs interpolees.
- pp - Structure polynomiale par morceaux.

## 📄 Description

<b>interp1</b> retourne les valeurs interpolees d'une fonction 1-D. La methode par defaut est 'linear'.

<b>pp = interp1(x, v, method, 'pp')</b> retourne une structure polynomiale par morceaux evaluable avec <b>ppval</b>.

## 📚 Bibliographie

de Boor, C., A Practical Guide to Splines, Springer-Verlag, 1978.

## 💡 Exemple

```matlab
v = [0 1.41 2 1.41 0 -1.41 -2 -1.41 0];
xq = 1.5:8.5;
vq = interp1(v, xq);
```

## 🔗 Voir aussi

[interp2](../special_functions/interp2.md), [interp3](../special_functions/interp3.md), [interpn](../special_functions/interpn.md), [ppval](../polynomial_functions/ppval.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
