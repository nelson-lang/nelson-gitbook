# struct2array

Concatène les valeurs des champs d'une structure en un tableau.

## 📝 Syntaxe

- a = struct2array(s)

## 📥 Argument d'entrée

- s - une structure dont les valeurs de champs peuvent être concaténées.

## 📤 Argument de sortie

- a - la concaténation horizontale des valeurs des champs.

## 📄 Description


<b>a = struct2array(s)</b> renvoie la concaténation horizontale des valeurs des champs de <b>s</b>. Les valeurs doivent avoir des tailles et types compatibles.

## 💡 Exemple



```matlab
s.a = 1;
s.b = [2 3];
struct2array(s)
```


## 🔗 Voir aussi

[struct2cell](../data_structures/struct2cell.md), [cell2mat](../data_structures/cell2mat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
