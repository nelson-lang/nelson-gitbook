# mode

Valeurs les plus frequentes.

## 📝 Syntaxe

- M = mode(A)
- M = mode(A, d)
- [M, F, C] = mode(...)

## 📥 Argument d'entrée

- A - input array.
- d - dimension to operate along: positive integer scalar.

## 📤 Argument de sortie

- M - Most frequent values.
- F - Frequencies of the most frequent values.
- C - Cell array containing the most frequent values.

## 📄 Description


<b>mode</b> renvoie les valeurs les plus frequentes de A selon la dimension choisie.

## Fonction(s) utilisée(s)


    mean
    median
    std
  

## 💡 Exemple



```matlab
A = [1 2 2; 3 3 4];
[M, F, C] = mode(A)
```


## 🔗 Voir aussi

[median](../../statistics/1_descriptive_statistics_visualization/median.md), [sort](../../data_analysis/sort.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
