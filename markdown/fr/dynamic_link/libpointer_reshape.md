# libpointer_reshape

Redimensionne les dimensions du libpointer

## 📝 Syntaxe

- tf = h.reshape(X, Y)

## 📥 Argument d'entrée

- h - a libpointer handle.
- X - a scalar double: new X dimension.
- Y - a scalar double: new Y dimension.

## 📄 Description

Définit les dimensions d'un objet libpointer.

## 💡 Exemple

```matlab
a = libpointer('doublePtr', eye(2, 2));
a.reshape(3, 3);
a.Value
```

## 🔗 Voir aussi

[libpointer](../dynamic_link/libpointer.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
