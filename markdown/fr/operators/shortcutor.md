# shortcutor

Opérateur OR à court-circuit, ||

## 📝 Syntaxe

- C = A || B

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A || B

## 📄 Description

<b>C = A || B</b> effectue une opération logique <b>OR</b> : le second opérande n'est évalué que lorsque le résultat ne peut pas être déterminé par le premier opérande.

## 💡 Exemple

```matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A || B

```

## 🔗 Voir aussi

[or](../operators/or.md), [&&](../operators/shortcutand.md), [xor](../operators/xor.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
