# movsum

Somme mobile.

## 📝 Syntaxe

- R = movsum(A, window)
- R = movsum(A, window, d)

## 📥 Argument d'entrée

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Argument de sortie

- R - Moving sum.

## 📄 Description


<b>movsum</b> calcule les sommes sur une fenetre mobile centree.

## 💡 Exemple



```matlab
A = [1 2 8 4 5];
R = movsum(A, 3)
```


## 🔗 Voir aussi

[sum](../data_analysis/sum.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
