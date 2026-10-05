# QObject\_methodsignature

Renvoie la signature d'une méthode d'une poignée (handle) QObject.

## 📝 Syntaxe

- res = QObject\_methodsignature(h, method\_name)

## 📥 Argument d'entrée

- h - une poignée (handle) QObject.
- method\_name - une chaîne : nom de la méthode.

## 📤 Argument de sortie

- R - a string: method signature.

## 📄 Description


Renvoie la signature d'une méthode d'une poignée (handle) QObject.

## 💡 Exemple



```matlab
h = errordlg()
QObject_methodsignature(h, 'setVisible')
```


## 🔗 Voir aussi

[QObject_invoke (invoke)](../handle/invoke.md), [QObject_methods (methods)](../handle/methods.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
