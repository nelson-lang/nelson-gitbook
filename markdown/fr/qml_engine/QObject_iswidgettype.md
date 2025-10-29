# QObject_iswidgettype

Renvoie true si le QObject est un widget.

## 📝 Syntaxe

- R = QObject_iswidgettype(h)

## 📥 Argument d'entrée

- h - une poignée (handle) QObject.

## 📤 Argument de sortie

- R - un logique (booléen).

## 📄 Description

Renvoie true si le QObject est un widget ; sinon renvoie false.

## 💡 Exemple

```matlab
h = errordlg()
r = QObject_iswidgettype(h)
```

## 🔗 Voir aussi

[QObject_set (set)](../qml_engine/QObject_set.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
