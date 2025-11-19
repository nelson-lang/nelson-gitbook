# loadcompilerconf

Charger la configuration du compilateur

## 📝 Syntaxe

- res = loadcompilerconf()
- [res, compiler] = loadcompilerconf()

## 📤 Argument de sortie

- res - un booléen
- compiler - une chaîne : 'msvc', 'mingw', 'unix' ou ''

## 📄 Description

<b>loadcompilerconf</b> renvoie true si un compilateur a été configuré auparavant avec<b>configuremsvc</b> ou <b>configuremingw</b>.

<b>loadcompilerconf</b> renvoie toujours false sur les autres plateformes et 'unix' comme compilateur.

<b>loadcompilerconf</b> est appelé au démarrage de Nelson.

## 🔗 Voir aussi

[removecompilerconf](../dynamic_link/removecompilerconf.md), [configuremingw](../dynamic_link/configuremingw.md), [configuremsvc](../dynamic_link/configuremsvc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
