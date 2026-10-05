# ismember

Éléments d'un tableau présents dans un autre tableau.

## 📝 Syntaxe

- T = ismember(A, B)
- [T, loc] = ismember(A, B)

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- T - résultat de ismember.
- loc - plus petit indice dans B pour chaque élément de A présent, 0 en l'absence de correspondance.

## 📄 Description


<b>T = ismember(A, B)</b> renvoie un tableau logique indiquant où les éléments de <b>A</b> se trouvent dans <b>B</b>. 

<b>[T, loc] = ismember(A, B)</b> renvoie aussi <b>loc</b>, le plus petit indice dans <b>B</b> pour chaque élément de <b>A</b> présent dans <b>B</b>, et 0 sinon.

## 💡 Exemple



```matlab
A = [50 30 40 20];
B = [20 40 40 40 60 80];
T = ismember(A, B)

T = ismember(["a","b","f"], ["b", "f", "c"])


```


## 🔗 Voir aussi

[sort](../data_analysis/sort.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
