# mrdivide

Division matricielle à droite, opérateur /.

## 📝 Syntaxe

- C = mrdivide(A, B)
- C = A / B

## 📥 Argument d'entrée

- A - une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.
- B - une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.

## 📤 Argument de sortie

- C - résultat de A / B

## 📄 Description


<b>C = mrdivide(A, B)</b> retourne la division matricielle à droite de A par B. 

Lorsqu'un opérande est une table ou une timetable et que l'autre est un scalaire, <b>A / B</b> est une opération élément par élément appliquée à chaque variable, identique à <b>A ./ B</b> : les noms de variables, les unités et les temps de ligne sont conservés. Toute autre combinaison avec une table ou une timetable (deux tables, ou une table et un tableau non scalaire) provoque une erreur : utilisez <b>./</b> à la place.

## 💡 Exemples



```matlab
B = ones(3, 4)
A = B *2
A / B
```
Opération élément par élément entre une table et un scalaire.

```matlab
T = table([1; 2], [4; 8]);
T / 2
8 / T
```


## 🔗 Voir aussi

[ldivide](../operators/ldivide.md), [mldivide](../operators/mldivide.md), [rdivide](../operators/rdivide.md), [table](../table/1_create_convert_tables/table.md), [timetable](../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | opérandes table et timetable combinés avec un scalaire (opération élément par élément). |

<!--
## 👤 Auteur

Allan CORNET
-->
