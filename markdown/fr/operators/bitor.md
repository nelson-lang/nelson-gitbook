# bitor

Opération OR bit à bit

## 📝 Syntaxe

- C = bitor(A, B)
- C = bitor(A, B, assumedtype)

## 📥 Argument d'entrée

- A - variable : double, logical, integer
- B - variable : double, logical, integer
- assumedtype - 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' ou 'uint8'.

## 📤 Argument de sortie

- C - Résultat de l'opération OR bit à bit

## 📄 Description

<b>C = bitor(A, B)</b> returns the bit-wise OR of <b>A</b> and <b>B</b>.

## 💡 Exemple

```matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitor(A, B)

```

## 🔗 Voir aussi

[bitand](../operators/bitand.md), [bitxor](../operators/bitxor.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
