# assignin

Assigne une valeur à une variable dans une portée de variables spécifiée.

## 📝 Syntaxe

- assignin(scope, variable_name, variable_value)

## 📥 Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local'.
- variable_name - une chaîne : nom de la variable destination.
- variable_value - variable à assigner.

## 📄 Description

<b>assignin</b> assigne une valeur à une variable dans une portée de variables spécifiée.

## 💡 Exemple

```matlab
assignin('base', 'X', 33);
Y = acquirevar('base', 'X');
```

## 🔗 Voir aussi

[assignin](../memory_manager/assignin.md), [who](../memory_manager/who.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
