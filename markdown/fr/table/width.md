# width

Nombre de variables d'une table

## 📝 Syntaxe

- W = width(T)

## 📥 Argument d'entrée

- T - Tableau d'entrée (table ou autre).

## 📤 Argument de sortie

- W - un entier : nombre de variables dans la table ou size(T, 2).

## 📄 Description

<b>W = width(T)</b> renvoie le nombre de variables dans la table T.

La fonction <b>width(T)</b> est équivalente à<b>size(T, 2)</b>, qui fournit également le nombre de colonnes dans la table.

## 💡 Exemple

```matlab
T = table();
width(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
width(T)

```

## 🔗 Voir aussi

[height](../table/height.md), [size](../elementary_functions/size.md), [table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.8.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
