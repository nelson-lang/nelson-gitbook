# pchip

Interpolation polynomiale cubique de Hermite par morceaux (PCHIP).

## 📝 Syntaxe

- yq = pchip(x, y, xq)
- pp = pchip(x, y)

## 📥 Argument d'entrée

- x - Points d'echantillonnage, strictement croissants.
- y - Valeurs d'echantillonnage.
- xq - Points de requete.

## 📤 Argument de sortie

- yq - Valeurs interpolees.
- pp - Structure polynomiale par morceaux.

## 📄 Description


<b>pchip</b> est une fonction de commodite pour l'interpolation cubique de Hermite par morceaux en une dimension, qui preserve la forme des donnees : l'interpolant conserve la monotonie et ne depasse pas les valeurs. 

Avec trois entrees, <b>pchip(x, y, xq)</b> est equivalent a <b>interp1(x, y, xq, 'pchip')</b>. 

Avec deux entrees, elle retourne une structure polynomiale par morceaux evaluable avec <b>ppval</b>.

## 💡 Exemples



```matlab
x = -3:3;
y = [-1 -1 -1 0 1 1 1];
xq = -3:0.25:3;
yq = pchip(x, y, xq)
```
Forme polynomiale par morceaux

```matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
pp = pchip(x, y);
yq = ppval(pp, 0:0.25:10)
```


## 🔗 Voir aussi

[interp1](../special_functions/interp1.md), [makima](../special_functions/makima.md), [ppval](../polynomial_functions/ppval.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
