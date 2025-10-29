# table2struct

Convertir une table en tableau de structures

## 📝 Syntaxe

- S = table2struct(T)
- S = table2struct(T, "ToScalar", true)

## 📥 Argument d'entrée

- T - un objet table

## 📤 Argument de sortie

- S - Structure.

## 📄 Description

<b>S = table2struct(T)</b> convertit la table <b>T</b> en un tableau de structures <b>S</b>, où chaque variable de <b>T</b> est représentée comme un champ dans <b>S</b>.

Si <b>T</b> est une table m-by-n, <b>S</b> sera un tableau de structures m-by-1 avec n champs.

La sortie <b>S</b> ne contiendra pas les propriétés de table provenant de <b>T.Properties</b>.

<b>S = table2struct(T, "ToScalar", true)</b> convertit la table <b>T</b> en une structure scalaire <b>S</b>, où chaque variable de <b>T</b> devient un champ dans <b>S</b>.

Si <b>T</b> est une table m-by-n, <b>S</b> contiendra n champs, et chaque champ aura m lignes.

## 💡 Exemple

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
S1 = table2struct(T)
S1 = table2struct(T, "ToScalar", true)
```

## 🔗 Voir aussi

[struct2table](../table/struct2table.md), [table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.8.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
