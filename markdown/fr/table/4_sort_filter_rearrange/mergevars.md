# mergevars

Fusionne des variables de table.

## 📝 Syntaxe

- T2 = mergevars(T, vars)
- T2 = mergevars(T, vars, 'NewVariableName', name)

## 📥 Argument d'entrée

- T - Table d'entree.
- vars - Variables a fusionner.

## 📤 Argument de sortie

- T2 - Table avec variables fusionnees.

## 📄 Description

<b>mergevars</b> combine plusieurs variables selectionnees en une seule variable de table.

## 💡 Exemple

```matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'});
R = mergevars(T, {'A', 'B'}, 'NewVariableName', 'AB')
```

## 🔗 Voir aussi

[splitvars](../../table/splitvars.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
