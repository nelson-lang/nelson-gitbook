# anova2

Analyse de variance a deux facteurs.

## 📝 Syntaxe

- p = anova2(Y)
- p = anova2(Y, reps)
- p = anova2(Y, reps, displayopt)
- [p, tbl, stats] = anova2(...)

## 📄 Description

<b>anova2</b> effectue une analyse de variance equilibree a deux facteurs. Les lignes representent les niveaux du facteur ligne et les colonnes les niveaux du facteur colonne.

Lorsque <b>reps</b> est superieur a un, chaque niveau du facteur ligne occupe <b>reps</b> lignes consecutives. Les p-values retournees testent les colonnes, les lignes et l'interaction. Sans repetition, l'interaction n'est pas estimee.

<b>displayopt</b> peut valoir <b>'on'</b> ou <b>'off'</b>.

## 💡 Exemple

```matlab
Y = [8 9 6; 7 8 5; 9 10 7; 12 14 11; 13 15 12; 11 13 10];
[p, tbl, stats] = anova2(Y, 2, 'off')
```

## 🔗 Voir aussi

[anova1](../../statistics/anova1.md), [fcdf](../../statistics/fcdf.md), [vartest2](../../statistics/vartest2.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
