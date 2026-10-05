# ranksum

Test de somme des rangs de Wilcoxon.

## 📝 Syntaxe

- p = ranksum(x, y)
- p = ranksum(x, y, Name, Value)
- [p, h, stats] = ranksum(...)

## 📄 Description


<b>ranksum</b> effectue un test de somme des rangs a deux echantillons. Les observations <b>NaN</b> sont omises dans chaque vecteur d'entree. 

Les arguments nom-valeur incluent <b>Alpha</b>, <b>Tail</b> et <b>Method</b>. Les queues prises en charge sont both, right et left. Les methodes prises en charge sont auto, exact et approximate.

## 💡 Exemple



```matlab
x = [1 3 5];
y = [2 4 6];
[p, h, stats] = ranksum(x, y)
```


## 🔗 Voir aussi

[kruskalwallis](../../statistics/3_hypothesis_tests/kruskalwallis.md), [signrank](../../statistics/3_hypothesis_tests/signrank.md), [normcdf](../../statistics/2_probability_distributions/normcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
