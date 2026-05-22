# havecompiler

Détecter si un compilateur C/C++ est configuré

## 📝 Syntaxe

- [status, compiler] = havecompiler()

## 📤 Argument de sortie

- status - un booléen.
- compiler - une chaîne : 'msvc', 'mingw', 'unix' ou ' '.

## 📄 Description

<b>havecompiler</b> détecte si un compilateur C/C++ est configuré pour Nelson.

Sur les plateformes Unix (Linux, MacOS),<b>havecompiler</b> renvoie toujours <b>true</b> et<b>unix</b> comme compilateur.

## 💡 Exemple

```matlab
[status, message] = havecompiler()
```

## 🔗 Voir aussi

[configuremsvc](../dynamic_link/configuremsvc.md), [configuremingw](../dynamic_link/configuremingw.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
