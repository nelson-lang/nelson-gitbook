# anova1

Analyse de variance a un facteur.

## 📝 Syntaxe

- p = anova1(X)
- p = anova1(X, group)
- p = anova1(X, group, displayopt)
- [p, tbl, stats] = anova1(...)

## 📄 Description

<b>anova1</b> effectue une analyse de variance a un facteur. Lorsque <b>X</b> est une matrice et que <b>group</b> est vide, les colonnes sont traitees comme des groupes. Lorsque <b>X</b> est un vecteur, <b>group</b> fournit une etiquette de groupe par observation.

<b>displayopt</b> peut valoir <b>'on'</b> ou <b>'off'</b>. Les observations <b>NaN</b> sont omises.

## 💡 Exemple

```matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = anova1(X, [], 'off')
```

## 🔗 Voir aussi

[fcdf](../../statistics/fcdf.md), [grpstats](../../statistics/grpstats.md), [vartest](../../statistics/vartest.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
