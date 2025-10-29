# libpointer_isNull

Vérifie si un handle libpointer pointe vers NULL

## 📝 Syntaxe

- tf = isNull(h)
- tf = h.isNull()

## 📥 Argument d'entrée

- h - a libpointer handle.

## 📤 Argument de sortie

- tf - a logical.

## 📄 Description

Vérifie si un handle libpointer pointe vers un pointeur NULL.

## 💡 Exemple

```matlab
p = libpointer('int8Ptr', int8([3 4]));
p.isNull()
p2 = libpointer()
p2.isNull()
isNull(p2)
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
