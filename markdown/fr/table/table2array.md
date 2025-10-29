# table2array

Convertir une table en tableau homogène.

## 📝 Syntaxe

- A = table2array(T)

## 📥 Argument d'entrée

- T - Objet table.

## 📤 Argument de sortie

- A - matrice : single, double, types entiers, logique, char, string, struct, cell.

## 📄 Description

<b>A = table2array(T)</b> convertit la table d'entrée <b>T</b> en un tableau homogène <b>A</b>, où les variables de <b>T</b> deviennent les colonnes de <b>A</b>.

La sortie <b>A</b> ne conserve pas les propriétés de la table provenant de <b>T.Properties</b>.

Si <b>T</b> est une table avec des noms de lignes, ces noms ne seront pas inclus dans <b>A</b>.

## 💡 Exemple

```matlab
A = magic(6);
T = array2table(A);
A = table2array(T)
```

## 🔗 Voir aussi

[array2table](../table/array2table.md), [table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.8.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
