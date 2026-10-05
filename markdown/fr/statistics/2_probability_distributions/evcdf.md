# evcdf

Fonction de repartition de la loi extreme value

## 📝 Syntaxe

- p = evcdf(x)
- p = evcdf(x, mu)
- p = evcdf(x, mu, sigma)
- p = evcdf(x, mu, sigma, 'upper')

## 📥 Argument d'entrée

- x - scalaire ou tableau reel : valeurs.
- mu - scalaire ou tableau reel : parametre de position. La valeur par defaut est 0.
- sigma - scalaire ou tableau positif : parametre d'echelle. La valeur par defaut est 1.
- 'upper' - option pour retourner la probabilite de queue superieure.

## 📤 Argument de sortie

- p - tableau : valeurs de probabilite.

## 📄 Description


<b>evcdf</b> evalue element par element les probabilites cumulees de la loi extreme value.

## 💡 Exemple



```matlab
x = [-2 -1 0 1 2];
p = evcdf(x, 0, 1);
```


## 🔗 Voir aussi

[evpdf](../../statistics/2_probability_distributions/evpdf.md), [evinv](../../statistics/2_probability_distributions/evinv.md), [evrnd](../../statistics/2_probability_distributions/evrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
