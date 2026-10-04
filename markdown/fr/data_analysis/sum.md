# sum

Somme des éléments d'un tableau.

## 📝 Syntaxe

- R = sum(M)
- R = sum(M, d)
- R = sum(M, 'all')
- R = sum(M, \_\_\_, f)
- R = sum(M, d, t)
- R = sum(M, 'all', t, f)

## 📥 Argument d'entrée

- M - un tableau de double, single, entiers, ...
- d - dimension le long de laquelle opérer : entier positif scalaire.
- 'all' - somme tous les éléments de M et renvoie un scalaire.
- t - chaîne : 'default', 'double' ou 'native'.
- f - chaîne : 'includenan' ou 'omitnan'.

## 📤 Argument de sortie

- R - somme des éléments du tableau.

## 📄 Description

<b>R = sum(M)</b> renvoie la somme selon la première dimension non singleton de M.

<b>R = sum(M, d)</b> somme selon la dimension d. <b>R = sum(M, 'all')</b> somme tous les éléments de M et renvoie un scalaire.

Les arguments texte optionnels contrôlent le type de sortie (<b>'default'</b>, <b>'double'</b> ou <b>'native'</b>) et le traitement des NaN (<b>'includenan'</b> ou <b>'omitnan'</b>).

## 💡 Exemples

Sommer selon une dimension.

```matlab
M = [1 2; 3 4];
R = sum(M, 2)

```

Sommer tous les éléments.

```matlab
M = [1 2; 3 4];
R = sum(M, 'all')

```

Conserver le type entier natif.

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = sum(M, 'native')
```

## 🔗 Voir aussi

[ndims](../elementary_functions/ndims.md), [prod](../data_analysis/prod.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
