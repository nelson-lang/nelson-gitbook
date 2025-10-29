# strings

Crée un tableau de chaînes vide.

## 📝 Syntaxe

- C = strings()
- C = strings(m)
- C = strings(m, n)
- C = strings(m, n, ... , p)
- C = strings(sz)

## 📥 Argument d'entrée

- m, n, ... , p - dimensions du tableau de chaînes à créer.
- sz - un vecteur d'entiers (dimensions du tableau à créer).

## 📤 Argument de sortie

- C - un tableau de chaînes

## 📄 Description

<b>strings</b> renvoie un tableau de chaînes vides.

## 💡 Exemple

```matlab
A = eye(2, 4);
sz = size(A)
C = strings(sz)
```

## 🔗 Voir aussi

[cell](../data_structures/cell.md), [isstring](../types/isstring.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
