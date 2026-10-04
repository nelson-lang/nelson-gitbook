# kruskalwallis

Analyse de variance de Kruskal-Wallis par rangs.

## 📝 Syntaxe

- p = kruskalwallis(X)
- p = kruskalwallis(X, group)
- p = kruskalwallis(X, group, displayopt)
- [p, tbl, stats] = kruskalwallis(...)

## 📄 Description

<b>kruskalwallis</b> effectue une analyse de variance non parametrique a un facteur par rangs. Lorsque <b>X</b> est une matrice et que <b>group</b> est vide, les colonnes sont traitees comme des groupes. Lorsque <b>X</b> est un vecteur, <b>group</b> fournit une etiquette de groupe par observation.

<b>displayopt</b> peut valoir <b>'on'</b> ou <b>'off'</b>. Les observations <b>NaN</b> sont omises.

## 💡 Exemple

```matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = kruskalwallis(X, [], 'off')
```

## 🔗 Voir aussi

[anova1](../../statistics/anova1.md), [chi2cdf](../../statistics/chi2cdf.md), [grpstats](../../statistics/grpstats.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
