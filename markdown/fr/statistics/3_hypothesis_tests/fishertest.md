# fishertest

Test exact de Fisher pour un tableau 2 par 2.

## 📝 Syntaxe

- h = fishertest(x)
- [h, p, stats] = fishertest(x)
- [h, p, stats] = fishertest(x, Name, Value)

## 📄 Description

<b>fishertest</b> effectue le test exact de Fisher pour un tableau de contingence 2 par 2. L'entree peut etre une matrice numerique ou une table contenant des effectifs entiers non negatifs.

Les arguments nom-valeur incluent <b>Alpha</b> et <b>Tail</b>. La sortie <b>stats</b> contient <b>OddsRatio</b> et <b>ConfidenceInterval</b>.

## 💡 Exemple

```matlab
x = [3 6; 1 7];
[h, p, stats] = fishertest(x, 'Tail', 'right')
```

## 🔗 Voir aussi

[crosstab](../../statistics/crosstab.md), [chi2gof](../../statistics/chi2gof.md), [norminv](../../statistics/norminv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
