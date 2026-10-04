# filloutliers

Detecte et remplace les valeurs aberrantes dans des donnees numeriques.

## 📝 Syntaxe

- B = filloutliers(A, fillmethod)
- B = filloutliers(A, fillmethod, method)
- B = filloutliers(A, fillmethod, 'percentiles', threshold)
- B = filloutliers(A, fillmethod, movmethod, window)
- B = filloutliers(..., dim)
- B = filloutliers(..., Name, Value)
- [B, TF, L, U, C] = filloutliers(...)

## 📄 Description

<b>filloutliers</b> detecte les valeurs aberrantes dans un tableau numerique et les remplace avec la methode de remplissage choisie.

Les methodes de remplissage incluent <b>previous</b>, <b>next</b>, <b>nearest</b>, <b>linear</b>, <b>pchip</b>, <b>clip</b> ou une constante scalaire numerique. Les methodes de detection et arguments nom-valeur sont partages avec <b>isoutlier</b>. L'argument nom-valeur <b>OutlierLocations</b> peut fournir directement un masque logique.

## 💡 Exemples

```matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = filloutliers(A, 'linear')
```

```matlab
A = [60 59 49 49 58 100 61 57 48 58];
[B, TF, L, U, C] = filloutliers(A, 'clip')
```

## 🔗 Voir aussi

[isoutlier](../../statistics/isoutlier.md), [rmoutliers](../../statistics/rmoutliers.md), [fillmissing](../../data_analysis/fillmissing.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
