# cell2table

Convertir un tableau de cellules en table.

## 📝 Syntaxe

- T = cell2table(C)
- T = cell2table(C, Name, Value)

## 📥 Argument d'entrée

- C - Tableau de cellules 2-D.
- Name, Value - Arguments nom-valeur, dans un ordre quelconque : 'VariableNames' (tableau de chaines ou tableau de cellules de vecteurs de caracteres, un nom par colonne de C), 'RowNames' (tableau de chaines ou tableau de cellules de noms non vides, un nom par ligne de C), 'DimensionNames' (deux noms). Les noms sont insensibles a la casse.

## 📤 Argument de sortie

- T - Objet Table.

## 📄 Description


<b>T = cell2table(C)</b> convertit le contenu d'un tableau de cellules m-by-n <b>C</b> en une table m-by-n. 

Chaque colonne du tableau de cellules d'entrée devient les données d'une variable correspondante dans la table de sortie. 

Pour générer des noms de variables dans la table de sortie, <b>cell2table</b> ajoute les numéros de colonne au nom du tableau d'entrée. 

Si le tableau d'entrée n'a pas de nom,<b>cell2table</b> attribue des noms de variables par défaut au format<b>
        "Var1", "Var2", ... , "VarN"
      </b>, où<b>N</b> est le nombre de colonnes dans le tableau de cellules. 

<b>T = cell2table(C, Name, Value)</b> cree la table avec les arguments nom-valeur <b>VariableNames</b>, <b>RowNames</b> et <b>DimensionNames</b>. Ces valeurs sont validees comme celles passees a <b>table</b> ; tout autre nom provoque une erreur.

## 💡 Exemples



```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T = cell2table(C)
```
Noms de variables et de lignes

```matlab
C = {'John', 28; 'Alice', 35};
T = cell2table(C, 'VariableNames', {'Name', 'Age'}, 'RowNames', {'r1', 'r2'})
```


## 🔗 Voir aussi

[table2cell](../../table/1_create_convert_tables/table2cell.md), [table](../../table/1_create_convert_tables/table.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.8.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
