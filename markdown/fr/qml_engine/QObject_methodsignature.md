# QObject_methodsignature

Renvoie la signature d'une méthode d'une poignée (handle) QObject.

## 📝 Syntaxe

- res = QObject_methodsignature(h, method_name)

## 📥 Argument d'entrée

- h - une poignée (handle) QObject.
- method_name - une chaîne : nom de la méthode.

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

[QObject_invoke (invoke)](../qml_engine/QObject_invoke.md), [QObject_methods (methods)](../qml_engine/QObject_methods.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
