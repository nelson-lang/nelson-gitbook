# runstest

Test des runs pour le hasard.

## 📝 Syntaxe

- h = runstest(x)
- h = runstest(x, v)
- h = runstest(x, 'ud')
- h = runstest(..., Name, Value)
- [h, p, stats] = runstest(...)

## 📄 Description


<b>runstest</b> teste si les valeurs d'un vecteur apparaissent dans un ordre aleatoire. Le test par defaut compte les runs au-dessus et au-dessous de la moyenne de <b>x</b>. Une valeur scalaire <b>v</b> peut etre fournie comme reference. Le mode <b>ud</b> compte les runs de montee et descente. 

Les arguments nom-valeur incluent <b>Alpha</b>, <b>Method</b> et <b>Tail</b>. Les valeurs <b>NaN</b> et les valeurs exactement egales a la reference sont omises.

## 💡 Exemple



```matlab
x = [1 2 3 4 5 0 -1 -2];
[h, p, stats] = runstest(x)
```


## 🔗 Voir aussi

[signtest](../../statistics/3_hypothesis_tests/signtest.md), [signrank](../../statistics/3_hypothesis_tests/signrank.md), [normcdf](../../statistics/2_probability_distributions/normcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
