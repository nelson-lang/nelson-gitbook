# regress

Regression lineaire multiple.

## 📝 Syntaxe

- b = regress(y, X)
- [b, bint] = regress(y, X)
- [b, bint, r] = regress(y, X)
- [b, bint, r, rint] = regress(y, X)
- [b, bint, r, rint, stats] = regress(y, X)
- [...] = regress(y, X, alpha)

## 📄 Description

<b>regress</b> estime les coefficients d'un modele de regression lineaire multiple du vecteur reponse <b>y</b> sur la matrice de predicteurs <b>X</b>.

Les lignes contenant des valeurs <b>NaN</b> dans <b>y</b> ou <b>X</b> sont ignorees pendant l'ajustement. Ajouter une colonne de uns dans <b>X</b> pour ajuster une constante.

## 💡 Exemple

```matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [ones(6, 1), (1:6)'];
[b, bint, r, rint, stats] = regress(y, X)
```

## 🔗 Voir aussi

[corr](../../statistics/corr.md), [partialcorr](../../statistics/partialcorr.md), [tcdf](../../statistics/tcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
