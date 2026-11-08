# splitapply

Découpe les données en groupes et applique une fonction.

## 📝 Syntaxe

- Y = splitapply(func, A, G)
- Y = splitapply(func, A1, ..., An, G)
- [Y1, ..., Ym] = splitapply(func, ..., G)

## 📥 Argument d'entrée

- func - un handle de fonction appliqué à chaque groupe.
- A, A1, ..., An - les données à découper par groupe (lignes).
- G - numéros de groupe, généralement issus de <b>findgroups</b>.

## 📤 Argument de sortie

- Y - les résultats, avec une ligne par groupe.

## 📄 Description


<b>Y = splitapply(func, A, G)</b> découpe <b>A</b> en groupes selon <b>G</b> et applique <b>func</b> à chaque groupe, puis concatène les résultats.

## 💡 Exemple



```matlab
G = findgroups([1; 2; 1; 2; 1]);
Y = splitapply(@sum, [10; 20; 30; 40; 50], G)
```


## 🔗 Voir aussi

[findgroups](../data_analysis/findgroups.md), [accumarray](../data_analysis/accumarray.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
