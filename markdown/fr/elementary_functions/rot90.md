# rot90

Rotate array 90 degrees.

## 📝 Syntaxe

- B = rot90(A)
- B = rot90(A, k)

## 📥 Argument d'entrée

- A - an array
- k - an positive integer value: Rotation constant.

## 📤 Argument de sortie

- B - rotated array.

## 📄 Description

<b>B = rot90(A, k)</b> rotates array <b>A</b> counter clockwise by <b>k \* 90</b> degrees, with <b>k</b> is an integer value.

Consider <b>flip</b> function to flip arrays in any dimension.

## 💡 Exemple

```matlab
x = eye(3, 2);
y = rot90(x, 0)
y = rot90(x, 1)
y = rot90(x, 2)
y = rot90(x, 3)
```

## 🔗 Voir aussi

[flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
