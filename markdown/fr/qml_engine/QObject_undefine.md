# QObject\_undefine

Supprime une propriété dynamique d'une poignée (handle) QObject.

## 📝 Syntaxe

- QObject\_undefine(h, property\_name)

## 📥 Argument d'entrée

- h - an QObject handle.
- property\_name - a string : dynamic property name.

## 📤 Argument de sortie

- R - a string: method signature.

## 📄 Description


Supprime une propriété dynamique d'une poignée (handle) QObject.

## 💡 Exemple



```matlab
h = errordlg()
set(h, 'myProp', 33)
h
get(h, 'myProp')
QObject_undefine(h, 'myProp')
get(h, 'myProp')
```


## 🔗 Voir aussi

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
