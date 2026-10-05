# missing

Renvoie une valeur manquante.

## 📝 Syntaxe

- m = missing()

## 📤 Argument de sortie

- m - une valeur manquante utilisable dans les tableaux et les tables

## 📄 Description
<b>missing</b> renvoie une valeur spéciale représentant une donnée manquante (non définie). Lorsqu'elle est assignée dans un tableau ou une table, la valeur <b>missing</b> est automatiquement convertie en la valeur manquante standard utilisée par le type de données du tableau. 

Une affectation indexée comme <b>A(k) = missing</b> ou <b>A(:) = missing</b> conserve la classe de <b>A</b> : <b>missing</b> devient <b>NaN</b> dans un tableau <b>double</b> ou <b>single</b>, <b><missing></b> dans un tableau <b>string</b>, <b>NaN</b> dans un tableau <b>duration</b> et <b>NaT</b> dans un tableau <b>datetime</b>. Les tableaux des autres classes (char, logical, entiers, cell) n'ont pas de valeur manquante et l'affectation lève une erreur. 

La concaténation suit les mêmes règles : <b>[missing missing]</b> est un tableau <b>missing</b> 1x2, <b>[missing 1]</b> vaut <b>[NaN 1]</b>, <b>[missing []]</b> vaut <b>NaN</b>, <b>[missing "a"]</b> est un tableau string, et concaténer <b>missing</b> avec une valeur char, logical, entière, cell, struct ou function handle lève une erreur.

## 💡 Exemple



```matlab

A = missing()
A = double([1, 2, missing()])
B = string(["foo", missing()])
C = struct("Name", "Alice", "Age", missing())
S = strings(1, 3);
S(2:3) = missing
X = [1 2 3];
X(:) = missing
M = [missing missing]

```


## 🔗 Voir aussi

[ismissing](../data_analysis/ismissing.md), [missing](../types/missing.md), [NaN](../constructors_functions/NaN.md), [string](../string/1_create_convert_text/string.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
