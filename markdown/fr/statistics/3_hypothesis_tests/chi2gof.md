# chi2gof

Test d'adequation du chi-carre.

## 📝 Syntaxe

- h = chi2gof(x)
- h = chi2gof(x, Name, Value)
- [h, p, stats] = chi2gof(...)

## 📄 Description


<b>chi2gof</b> effectue un test d'adequation du chi-carre pour un vecteur numerique reel. Les observations non finies et les frequences non positives ou non finies sont omises. 

Les arguments nom-valeur incluent <b>Alpha</b>, <b>NBins</b>, <b>Ctrs</b>, <b>Edges</b>, <b>CDF</b>, <b>Expected</b>, <b>Frequency</b>, <b>NParams</b> et <b>EMin</b>. <b>CDF</b> peut etre une matrice a deux colonnes ou un handle de fonction. 

La sortie <b>stats</b> contient <b>chi2stat</b>, <b>df</b>, <b>edges</b>, <b>O</b> et <b>E</b>.

## 💡 Exemple



```matlab
x = norminv(((1:100) - 0.5) / 100);
[h, p, stats] = chi2gof(x)
```


## 🔗 Voir aussi

[chi2cdf](../../statistics/2_probability_distributions/chi2cdf.md), [kstest](../../statistics/3_hypothesis_tests/kstest.md), [crosstab](../../statistics/1_descriptive_statistics_visualization/crosstab.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
