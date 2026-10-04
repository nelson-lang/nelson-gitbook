# accumarray

Construit un tableau par accumulation.

## 📝 Syntaxe

- A = accumarray(subs, val)
- A = accumarray(subs, val, sz)
- A = accumarray(subs, val, sz, fun)
- A = accumarray(subs, val, sz, fun, fillval)

## 📥 Argument d'entrée

- subs - indices : vecteur colonne ou matrice d'entiers positifs.
- val - valeurs a accumuler : vecteur colonne ou scalaire.
- sz - taille de la sortie : vecteur ligne ou [].
- fun - fonction d'accumulation : handle de fonction (defaut @sum).
- fillval - valeur des positions vides (defaut 0).

## 📤 Argument de sortie

- A - tableau accumule.

## 📄 Description

<b>accumarray(subs, val)</b> regroupe les elements de <b>val</b> selon les indices de <b>subs</b> et applique <b>@sum</b> a chaque groupe.

Chaque ligne de <b>subs</b> designe la position de sortie ou la valeur correspondante de <b>val</b> est accumulee.

<b>fun</b> remplace la somme par defaut, et <b>fillval</b> fixe la valeur des positions ne recevant aucune contribution.

## 💡 Exemple

```matlab
accumarray([1;2;1;3], [10;20;30;40])
accumarray([1;1;2], [3;5;7], [], @max)
```

## 🔗 Voir aussi

[sum](../data_analysis/sum.md), [unique](../elementary_functions/unique.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
