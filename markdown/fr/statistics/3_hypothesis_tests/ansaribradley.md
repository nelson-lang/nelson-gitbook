# ansaribradley

Test d'Ansari-Bradley pour dispersion egale.

## 📝 Syntaxe

- h = ansaribradley(x, y)
- h = ansaribradley(x, y, Name, Value)
- [h, p, stats] = ansaribradley(...)

## 📄 Description

<b>ansaribradley</b> effectue un test non parametrique a deux echantillons pour une dispersion egale. Les vecteurs peuvent avoir des longueurs differentes. Les tableaux sont testes le long d'une dimension choisie et doivent correspondre hors de cette dimension.

Les arguments nom-valeur incluent <b>Alpha</b>, <b>Dim</b>, <b>Tail</b> et <b>Method</b>. La sortie <b>stats</b> contient <b>W</b> et <b>Wstar</b>.

## 💡 Exemple

```matlab
x = [1 2 9 10];
y = [4 5 6 7];
[h, p, stats] = ansaribradley(x, y)
```

## 🔗 Voir aussi

[vartest2](../../statistics/vartest2.md), [ranksum](../../statistics/ranksum.md), [normcdf](../../statistics/normcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
