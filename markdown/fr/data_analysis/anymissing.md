# anymissing

Teste la présence de valeurs manquantes.

## 📝 Syntaxe

- tf = anymissing(A)

## 📥 Argument d'entrée

- A - un tableau, une table ou un categorical.

## 📤 Argument de sortie

- tf - un scalaire logique : <b>true</b> si <b>A</b> contient au moins une valeur manquante.

## 📄 Description


<b>tf = anymissing(A)</b> renvoie <b>true</b> si <b>A</b> contient au moins une valeur manquante (par exemple <b>NaN</b> ou <b>missing</b>).

## 💡 Exemple



```matlab
anymissing([1 NaN 3])
```


## 🔗 Voir aussi

[ismissing](../data_analysis/ismissing.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
