# isreal

Return true if all imaginary part is a zero array.

## 📝 Syntaxe

- res = isreal(var)

## 📥 Argument d'entrée

- var - a variable

## 📤 Argument de sortie

- res - a logical: true or false

## 📄 Description

<b>isreal</b> returns a logical true if all imaginary part is a zero array.

## 💡 Exemples

```matlab
A = 1 + 0i;
res = isreal(A)
```

```matlab
B = uint8(3);
res = isreal(B)
```

```matlab
A = single([3, i]);
res = isreal(A)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [isint8](../types/isint8.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
