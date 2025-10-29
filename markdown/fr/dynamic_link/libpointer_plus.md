# libpointer_plus

Opérateur + sur un handle libpointer

## 📝 Syntaxe

- h2 = h.plus(offset)
- h2 = h + offset

## 📥 Argument d'entrée

- h - a libpointer handle.
- offset - a integer value: increment.

## 📄 Description

Opérateur plus sur un handle libpointer.

Le libpointer de sortie n'est valide que tant que le libpointer d'origine existe.

## 💡 Exemple

```matlab
x = [1 2 3 4 5];
xPtr = libpointer('doublePtr', x);
y = xPtr + 2;
y.reshape(1, 3);
y.Value
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
