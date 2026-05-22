# ppval

Evalue une forme polynomiale par morceaux

## 📝 Syntaxe

- vq = ppval(pp, xq)

## 📥 Argument d'entrée

- pp - Structure polynomiale par morceaux, par exemple la structure retournee par interp1(..., 'pp').
- xq - Points de requete.

## 📤 Argument de sortie

- vq - Valeurs du polynome par morceaux aux points xq.

## 📄 Description

<b>ppval</b> evalue une structure polynomiale par morceaux. La structure contient les ruptures, les coefficients, le nombre de morceaux, l'ordre et la dimension de sortie.

Pour le flux d'interpolation, creez pp avec <b>interp1(x, v, method, 'pp')</b>, puis evaluez-la avec <b>ppval</b>.

## 💡 Exemple

```matlab
x = 1:4;
v = [10 20 40 80];
pp = interp1(x, v, 'linear', 'pp');
ppval(pp, [1.5 2.5])
```

## 🔗 Voir aussi

[interp1](../special_functions/interp1.md), [polyval](../polynomial_functions/polyval.md).

<!--
## 👤 Auteur

Allan CORNET
-->
