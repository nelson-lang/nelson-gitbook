# iqr

Écart interquartile.

## 📝 Syntaxe

- r = iqr(A)
- r = iqr(A, dim)
- r = iqr(A, vecdim)
- r = iqr(A, 'all')
- [r, q] = iqr(...)

## 📄 Description


<b>iqr</b> retourne la différence entre le troisième et le premier quartile. Le second résultat optionnel contient le premier et le troisième quartile. 

Les dimensions peuvent être une dimension scalaire, un vecteur de dimensions ou <b>all</b>. 

<b>A</b> peut être un tableau numérique réel, un tableau <b>datetime</b> ou un tableau <b>duration</b>. Pour des données datetime, l'écart interquartile <b>r</b> est une duration et les quartiles <b>q</b> sont des valeurs datetime. Pour des données duration, <b>r</b> et <b>q</b> sont des durations. Les valeurs <b>NaT</b> sont ignorées comme les valeurs <b>NaN</b>.

## 💡 Exemples



```matlab
A = [2 5 6 10 11 13];
[r, q] = iqr(A)
```
données datetime et duration

```matlab
t = datetime(2024, 1, [1 3 5 7 30]);
[r, q] = iqr(t)
```


## 🔗 Voir aussi

[quantile](../../statistics/1_descriptive_statistics_visualization/quantile.md), [prctile](../../statistics/1_descriptive_statistics_visualization/prctile.md), [mad](../../statistics/1_descriptive_statistics_visualization/mad.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |
| 2.0.0   | données datetime et duration supportées. |

<!--
## 👤 Auteur

Allan CORNET
-->
