# splitvars

Separe des variables multicolonnes.

## 📝 Syntaxe

- T2 = splitvars(T, vars)
- T2 = splitvars(T, vars, 'NewVariableNames', names)

## 📥 Argument d'entrée

- T - Table d'entree.
- vars - Variables a separer.

## 📤 Argument de sortie

- T2 - Table avec variables separees.

## 📄 Description

<b>splitvars</b> remplace une variable multicolonne par plusieurs variables de table.

## 💡 Exemple

```matlab
T = table([1 3; 2 4], 'VariableNames', {'AB'});
R = splitvars(T, 'AB', 'NewVariableNames', {'A', 'B'})
```

## 🔗 Voir aussi

[mergevars](../../table/mergevars.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
