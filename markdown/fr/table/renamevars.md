# renamevars

Renommer les variables dans une table.

## 📝 Syntaxe

- TB = renamevars(TA, varsNames, newNames)

## 📥 Argument d'entrée

- TA - Table d'entrée.
- varsNames - Noms des variables dans la table d'entrée : vecteur de caractères, tableau de chaînes ou tableau de cellules de vecteurs de caractères.
- newNames - Nouveaux noms pour les variables : vecteur de caractères, tableau de chaînes ou tableau de cellules de vecteurs de caractères.

## 📤 Argument de sortie

- TB - Objet Table avec les noms de variables modifiés.

## 📄 Description

<b>TB = renamevars(TA, varsNames, newNames)</b> renomme les variables dans la table<b>TA</b> telles que spécifiées par<b>varsNames</b> et leur assigne les nouveaux noms fournis dans<b>newNames</b>.

Vous pouvez également renommer toutes les variables d'une table en assignant de nouveaux noms à sa propriété <b>VariableNames</b> en utilisant <b>T.Properties.VariableNames = newNames</b>.

Dans ce cas, <b>newNames</b> doit être un tableau de chaînes ou un tableau de cellules de vecteurs de caractères.

## 💡 Exemple

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C);
T2 = renamevars(T1, {'C1', 'C2'}, {'Name', 'Age'})
T3 = cell2table(C);
T3.Properties.VariableNames = {'Name', 'Age', 'Married'};
T3
```

## 🔗 Voir aussi

[table](../table/table.md), [removevars](../table/removevars.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.9.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
