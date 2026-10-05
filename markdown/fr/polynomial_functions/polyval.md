# polyval

Évaluation polynomiale.

## 📝 Syntaxe

- y = polyval(p, x)
- y = polyval(p, x, S)
- y = polyval(p, x, S, mu)
- [y, delta] = polyval(p, x, S)
- [y, delta] = polyval(p, x, S, mu)

## 📥 Argument d'entrée

- p - vecteur : coefficients du polynôme
- x - points d'évaluation
- S - structure : structure d'estimation d'erreur, la deuxième sortie de polyfit (champs R, df et normr). Requise pour calculer delta.
- mu - vecteur de deux éléments : centrage et mise à l'échelle, la troisième sortie de polyfit. Le polynôme est évalué en (x - mu(1)) / mu(2).

## 📤 Argument de sortie

- y - vecteur : valeurs de la fonction
- delta - vecteur : estimation de l'erreur type pour chaque valeur, calculée à partir de S.

## 📄 Description


<b>polyval</b> évalue un polynôme en plusieurs points. 

Lorsque <b>mu</b> est fourni, le polynôme est évalué aux points centrés et mis à l'échelle (x - mu(1)) / mu(2), en accord avec un ajustement produit par <b>polyfit</b> avec trois sorties. 

Lorsque la deuxième sortie <b>delta</b> est demandée, <b>S</b> doit être fournie et sert à retourner une estimation de l'erreur type de la prédiction.

## 💡 Exemple



```matlab

p = [3 2 1];
x = [5 7 9];
R = polyval(p, x)
```


## 🔗 Voir aussi

[polyvalm](../polynomial_functions/polyvalm.md), [polyfit](../polynomial_functions/polyfit.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
