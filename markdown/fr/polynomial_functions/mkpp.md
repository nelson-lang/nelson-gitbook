# mkpp

Construit un polynome par morceaux

## 📝 Syntaxe

- pp = mkpp(breaks, coefs)
- pp = mkpp(breaks, coefs, d)

## 📥 Argument d'entrée

- breaks - Vecteur des points de rupture, de longueur pieces + 1.
- coefs - Matrice des coefficients polynomiaux, de taille (pieces \* prod(d)) par order. Chaque ligne contient les coefficients d'un morceau, de la puissance la plus elevee au terme constant.
- d - Dimension des valeurs du polynome par morceaux (1 par defaut).

## 📤 Argument de sortie

- pp - Structure polynomiale par morceaux avec les champs form, breaks, coefs, pieces, order et dim.

## 📄 Description

<b>mkpp</b> construit une structure polynomiale par morceaux a partir de ses points de rupture et de ses coefficients. La structure peut ensuite etre evaluee avec <b>ppval</b>.

Pour chaque morceau, le polynome est evalue dans la variable locale x - breaks(i), ou breaks(i) est le point de rupture gauche du morceau.

Le nombre de morceaux vaut numel(breaks) - 1 et l'ordre est le nombre de colonnes de coefs.

## 💡 Exemple

```matlab
pp = mkpp([0 1 2], [1 0; 1 1]);
ppval(pp, 0.5)
```

## 🔗 Voir aussi

[ppval](../polynomial_functions/ppval.md), [interp1](../special_functions/interp1.md).

<!--
## 👤 Auteur

Allan CORNET
-->
