# makima

Interpolation cubique d'Akima modifiee.

## 📝 Syntaxe

- yq = makima(x, y, xq)
- pp = makima(x, y)

## 📥 Argument d'entrée

- x - Points d'echantillonnage.
- y - Valeurs d'echantillonnage.
- xq - Points de requete.

## 📤 Argument de sortie

- yq - Valeurs interpolees.
- pp - Structure polynomiale par morceaux.

## 📄 Description

<b>makima</b> est une fonction de commodite pour l'interpolation d'Akima modifiee en une dimension.

Avec deux entrees, elle retourne une structure polynomiale par morceaux evaluable avec <b>ppval</b>.

## 💡 Exemple

```matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
yq = makima(x, y, 0:0.25:10)
```

## 🔗 Voir aussi

[interp1](../special_functions/interp1.md), [pchip](../special_functions/pchip.md), [ppval](../polynomial_functions/ppval.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
