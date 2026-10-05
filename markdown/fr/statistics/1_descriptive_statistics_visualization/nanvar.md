# nanvar

Variance en ignorant les valeurs NaN.

## 📝 Syntaxe

- v = nanvar(X)
- v = nanvar(X, w)
- v = nanvar(X, w, dim)
- v = nanvar(X, w, vecdim)
- v = nanvar(X, w, 'all')

## 📄 Description


<b>nanvar</b> calcule la variance apres suppression des valeurs <b>NaN</b> dans chaque tranche traitee. 

<b>w</b> peut valoir <b>0</b>, <b>1</b>, etre vide pour le comportement par defaut, ou etre un vecteur de poids non negatifs pour une dimension scalaire.

## 💡 Exemple



```matlab
X = magic(3);
X([1 6:9]) = NaN;
v = nanvar(X)
```


## 🔗 Voir aussi

[var](../../statistics/1_descriptive_statistics_visualization/var.md), [nanmean](../../statistics/1_descriptive_statistics_visualization/nanmean.md), [nanmedian](../../statistics/1_descriptive_statistics_visualization/nanmedian.md), [nanstd](../../statistics/1_descriptive_statistics_visualization/nanstd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
