# convertvars

Convertit des variables de table.

## 📝 Syntaxe

- T2 = convertvars(T, vars, fun)

## 📥 Argument d'entrée

- T - Table d'entree.
- vars - Variables a convertir.
- fun - Fonction appliquee aux variables selectionnees.

## 📤 Argument de sortie

- T2 - Table avec variables converties.

## 📄 Description

<b>convertvars</b> applique une fonction de conversion aux variables selectionnees.

## 💡 Exemple

```matlab
T = table([1; 2], 'VariableNames', {'A'});
R = convertvars(T, 'A', @(x) single(x))
```

## 🔗 Voir aussi

[vartype](../../table/vartype.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
