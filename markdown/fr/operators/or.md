# or

Opérateur logique 'OU', |

## 📝 Syntaxe

- C = or(A, B)
- C = A | B

## 📥 Argument d'entrée

- A - une variable
- B - a variable

## 📤 Argument de sortie

- C - résultat de A | B

## 📄 Description

<b>C = or(A, B)</b> effectue une opération logique <b>OU</b>.

## 💡 Exemple

```matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A | B
D = or(B, A)
C == D
```

## 🔗 Voir aussi

[and](../operators/and.md), [xor](../operators/xor.md), [all](../operators/all.md), [any](../operators/any.md), [not](../operators/not.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
