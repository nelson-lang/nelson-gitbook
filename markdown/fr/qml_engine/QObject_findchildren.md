# QObject_findchildren

Renvoie tous les enfants de cet objet ayant le nom donné.

## 📝 Syntaxe

- hr = QObject_findchildren(h, objectName, recursive)

## 📥 Argument d'entrée

- h - une poignée (handle) QObject.
- objectName - une chaîne.
- recursive - un logique : true (La recherche est effectuée de manière récursive).

## 📤 Argument de sortie

- hr - a vector of QObject handle.

## 📄 Description

Renvoie tous les enfants de cet objet ayant le nom donné.

## 💡 Exemple

```matlab
h1 = errordlg()
h2 = errordlg()
hr = QObject_findchildren(QObject_root(), 'errordlg', true)
```

## 🔗 Voir aussi

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
