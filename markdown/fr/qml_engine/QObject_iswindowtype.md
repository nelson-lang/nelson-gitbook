# QObject\_iswindowtype

Renvoie true si le QObject est une fenêtre.

## 📝 Syntaxe

- R = QObject\_iswindowtype(h)

## 📥 Argument d'entrée

- h - une poignée (handle) QObject.

## 📤 Argument de sortie

- R - a logical.

## 📄 Description


Renvoie true si le QObject est une fenêtre ; sinon renvoie false.

## 💡 Exemple



```matlab
h = errordlg()
r = QObject_iswindowtype(h)
```


## 🔗 Voir aussi

[QObject_set (set)](../qml_engine/QObject_set.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
