# uniquetol

Valeurs uniques à une tolérance près.

## 📝 Syntaxe

- C = uniquetol(A)
- C = uniquetol(A, tol)
- C = uniquetol(\_\_\_, nom, valeur)
- [C, ia, ic] = uniquetol(\_\_\_)

## 📥 Argument d'entrée

- A - tableau plein réel de type single ou double.
- tol - tolérance scalaire positive ou nulle. La valeur par défaut est 1e-12 pour du double et 1e-6 pour du single. Deux valeurs u et v sont dans la tolérance si abs(u-v) <= tol\*DataScale.
- nom, valeur - une ou plusieurs paires nom-valeur : 'ByRows' (logique, traite chaque ligne de A comme un seul élément), 'OutputAllIndices' (logique, renvoie ia sous forme de tableau de cellules contenant tous les indices de chaque groupe), 'DataScale' (scalaire ou vecteur par colonne utilisé à la place de la mise à l'échelle automatique).

## 📤 Argument de sortie

- C - valeurs uniques de A à la tolérance près, triées par ordre croissant.
- ia - vecteur d'indices tel que C = A(ia). Lorsque 'OutputAllIndices' est vrai, ia est un tableau de cellules où ia{k} liste tous les indices de A appartenant au k-ème groupe.
- ic - vecteur d'indices tel que A est à la tolérance près de C(ic).

## 📄 Description


<b>uniquetol</b> retourne les valeurs uniques de <b>A</b> en utilisant la tolérance <b>tol</b>. Deux éléments sont considérés égaux lorsque leur différence absolue est inférieure ou égale à <b>tol</b> mise à l'échelle par les données. Par défaut la mise à l'échelle est la plus grande valeur absolue de <b>A</b>, ou la plus grande valeur absolue de chaque colonne lorsque <b>'ByRows'</b> est vrai. 

La sortie <b>C</b> est triée par ordre croissant et, pour chaque groupe de valeurs proches, conserve la plus petite.

## 💡 Exemple



```matlab
[C, ia, ic] = uniquetol([2 1 2 1.0000001], 1e-6)
```


## 🔗 Voir aussi

[ismembertol](../data_analysis/ismembertol.md), [unique](../data_analysis/unique.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
