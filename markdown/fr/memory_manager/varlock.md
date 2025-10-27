# varlock

Verrouille une variable.

## 📝 Syntaxe

- varlock(scope, variable_name)

## 📥 Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local'.
- variable_name - une chaîne : nom de la variable.

## 📄 Description

<b>varlock</b> verrouille une variable.

Les variables verrouillées ne peuvent pas être supprimées.

<b>ans</b> ne peut pas être verrouillée.

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

[varislock](../memory_manager/varislock.md), [varunlock](../memory_manager/varunlock.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
