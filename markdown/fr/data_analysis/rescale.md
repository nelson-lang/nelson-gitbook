# rescale

Met à l'échelle les éléments dans un intervalle fixé.

## 📝 Syntaxe

- Y = rescale(X)
- Y = rescale(X, a, b)
- Y = rescale(..., 'InputMin', lo, 'InputMax', hi)

## 📥 Argument d'entrée

- X - un tableau numérique.
- a, b - les bornes de l'intervalle de sortie (par défaut <b>0</b> et <b>1</b>).
- lo, hi - limites d'entrée optionnelles associées à <b>a</b> et <b>b</b>.

## 📤 Argument de sortie

- Y - le tableau mis à l'échelle, de même taille que <b>X</b>.

## 📄 Description


<b>Y = rescale(X)</b> met les éléments de <b>X</b> à l'échelle sur l'intervalle <b>[0, 1]</b>. 

<b>Y = rescale(X, a, b)</b> met les éléments à l'échelle sur l'intervalle <b>[a, b]</b>.

## 💡 Exemple



```matlab
Y = rescale([1 2 3 4 5])
Z = rescale([1 2 3 4 5], 0, 10)
```


## 🔗 Voir aussi

[bounds](../data_analysis/bounds.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
