# cell2table

Convertir un tableau de cellules en table.

## 📝 Syntaxe

- T = cell2table(C)

## 📥 Argument d'entrée

- C - Tableau de cellules 2-D.

## 📤 Argument de sortie

- T - Objet Table.

## 📄 Description

<b>T = cell2table(C)</b> convertit le contenu d'un tableau de cellules m-by-n <b>C</b> en une table m-by-n.

Chaque colonne du tableau de cellules d'entrée devient les données d'une variable correspondante dans la table de sortie.

Pour générer des noms de variables dans la table de sortie, <b>cell2table</b> ajoute les numéros de colonne au nom du tableau d'entrée.

Si le tableau d'entrée n'a pas de nom,<b>cell2table</b> attribue des noms de variables par défaut au format<b>
"Var1", "Var2", ... , "VarN"
</b>, où<b>N</b> est le nombre de colonnes dans le tableau de cellules.

## 💡 Exemple

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T = cell2table(C)
```

## 🔗 Voir aussi

[table2cell](../table/table2cell.md), [table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.8.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
