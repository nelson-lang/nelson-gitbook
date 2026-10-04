# stack

Empile des variables de table en lignes.

## 📝 Syntaxe

- S = stack(T, vars)
- S = stack(T, vars, 'NewDataVariableName', name)

## 📥 Argument d'entrée

- T - Table d'entree.
- vars - Variables a empiler.

## 📤 Argument de sortie

- S - Table empilee.

## 📄 Description

<b>stack</b> transforme des variables selectionnees en une variable de donnees et une variable indicatrice.

## 💡 Exemple

```matlab
T = table({'a'; 'b'}, [1; 2], [3; 4], 'VariableNames', {'ID', 'X', 'Y'});
S = stack(T, {'X', 'Y'}, 'NewDataVariableName', 'Value')
```

## 🔗 Voir aussi

[unstack](../../table/unstack.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
