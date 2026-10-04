# normalize

Normalise les données

## 📝 Syntaxe

- N = normalize(A)
- N = normalize(A, method)
- N = normalize(A, method, methodtype)
- N = normalize(A, dim, \_\_\_)
- [N, C, S] = normalize(\_\_\_)

## 📥 Argument d'entrée

- A - tableau numérique ou logique.
- method - 'zscore', 'norm', 'range', 'center', 'scale' ou 'medianiqr'.
- methodtype - option de la méthode choisie (par ex. 'std' ou 'robust' pour 'zscore', un ordre de norme pour 'norm', un intervalle à deux éléments pour 'range').
- dim - dimension le long de laquelle opérer.

## 📤 Argument de sortie

- N - données normalisées.
- C - valeur de centrage utilisée.
- S - valeur d'échelle utilisée.

## 📄 Description

<b>normalize</b> retourne le score-z par vecteur des données de A (centrage par la moyenne et mise à l'échelle par l'écart-type). Une méthode et un type de méthode permettent de choisir d'autres normalisations. Par défaut, normalize opère le long de la première dimension du tableau dont la taille n'est pas égale à 1.

## 💡 Exemple

```matlab
normalize([1 2 3 4 5])
```

## 🔗 Voir aussi

[zscore](../statistics/zscore.md), [std](../statistics/std.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
