# tabulate

Table de frequences.

## 📝 Syntaxe

- tabulate(x)
- tbl = tabulate(x)

## 📄 Description


<b>tabulate</b> renvoie les effectifs et pourcentages des valeurs uniques d'un vecteur. 

Une entree numerique renvoie une matrice numerique. Les entrees texte, logiques et categorielles renvoient un tableau de cellules. Une entree numerique d'entiers positifs inclut les lignes de compte nul de 1 a la valeur maximale.

## 💡 Exemple



```matlab
x = [1 3 3 4];
tbl = tabulate(x)
```


## 🔗 Voir aussi

[crosstab](../../statistics/1_descriptive_statistics_visualization/crosstab.md), [groupcounts](../../data_analysis/groupcounts.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
