# isvar

Vérifie l'existence d'une variable.

## 📝 Syntaxe

- tf = isvar(varname)
- tf = isvar(scope, varname)

## 📥 Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local'.
- varname - une chaîne : nom de la variable.

## 📤 Argument de sortie

- tf - un booléen : vrai si la variable existe.

## 📄 Description

<b>isvar</b> vérifie l'existence d'une variable.

## 💡 Exemple

```matlab
isvar('A')
A = 3
isvar('A')
isvar('global','B')
global B
isvar('global','B')
```

## 🔗 Voir aussi

[exist](../core/exist.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
