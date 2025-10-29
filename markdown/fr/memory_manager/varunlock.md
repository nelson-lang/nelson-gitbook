# varunlock

Déroque une variable.

## 📝 Syntaxe

- varunlock(scope, variable_name)

## 📥 Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local'.
- variable_name - une chaîne : nom de la variable.

## 📄 Description

<b>varunlock</b> déverrouille une variable.

## 💡 Exemple

```matlab
y = 3;
varislock('local', 'y')
varlock('local', 'y')
varislock('local', 'y')
y = 4
varunlock('local', 'y')
varislock('local', 'y')
y = 4
varlock('local', 'ans')
varislock('local', 'ans')


```

## 🔗 Voir aussi

[varislock](../memory_manager/varislock.md), [varlock](../memory_manager/varlock.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
