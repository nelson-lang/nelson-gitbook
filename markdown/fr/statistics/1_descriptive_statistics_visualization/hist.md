# hist

Comptage des classes d'un histogramme.

## 📝 Syntaxe

- hist(Y)
- hist(Y, nbins)
- hist(Y, centers)
- n = hist(...)
- [n, c] = hist(...)

## 📥 Argument d'entrée

- Y - un vecteur numérique.
- nbins - un scalaire : nombre de classes régulières (10 par défaut).
- centers - un vecteur de centres de classes.

## 📤 Argument de sortie

- n - le nombre d'éléments dans chaque classe.
- c - les centres des classes.

## 📄 Description


<b>hist</b> répartit les éléments de <b>Y</b> dans des classes et renvoie les effectifs. 

Deux modules fournissent un <b>hist</b> : celui-ci et celui du module <b>graphics</b>. Tous deux comptent les classes de la même façon, si bien qu'un même appel renvoie les mêmes effectifs de part et d'autre. Celui de <b>graphics</b> prend le dessus dès que ce module est chargé : c'est lui qui trace, et le seul qui accepte des axes désignés. Celui-ci répond là où <b>graphics</b> n'est pas chargé, comme dans <b>nelson-cli</b>, et il ne fait que compter : lui demander de tracer signale que le module <b>graphics</b>est nécessaire. 

Cette fonction est ancienne ; <b>histogram</b> et <b>histcounts</b> sont préférables pour du code neuf.

## 💡 Exemple



```matlab
[n, c] = hist([2 4 4 4 5 5 7 9], 3)
```


## 🔗 Voir aussi

[hist (graphics)](../../graphics/1_plots/4_data_distribution_plots/hist.md), [histc](../../elementary_functions/7_indexing_dimensions/histc.md), [tabulate](../../statistics/1_descriptive_statistics_visualization/tabulate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.14.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
