# removevars

Supprimer des variables d'une table.

## 📝 Syntaxe

- TB = removevars(TA, varsNames)

## 📥 Argument d'entrée

- TA - Table d'entrée.
- varsNames - Noms des variables de la table d'entrée à supprimer : vecteur de caractères, tableau de chaînes ou tableau de cellules de vecteurs de caractères.

## 📤 Argument de sortie

- TB - Objet table modifié.

## 📄 Description

<b>TB = removevars(TA, varsNames)</b> supprime les variables spécifiées par <b>varsNames</b> de la table <b>TA</b> et stocke les variables restantes dans <b>T2</b>.

Vous pouvez spécifier les variables par nom, position ou en utilisant des indices logiques.

Vous pouvez également supprimer des variables d'une table en utilisant<b>T(:, varsNames) = []</b>.

## 💡 Exemple

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C)
T2 = removevars(T1, 'C2')

```

## 🔗 Voir aussi

[table](../../table/table.md), [renamevars](../../table/renamevars.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.9.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
