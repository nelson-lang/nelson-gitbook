# ne

Inégalité, opérateur ~=

## 📝 Syntaxe

- C = ne(A, B)
- C = A ~= B

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A ~= B

## 📄 Description

<b>C = ne(A, B)</b> effectue l'opération d'inégalité : A ~= B.

<b>ne</b> compare les parties réelle et imaginaire des tableaux numériques.

Lorsque les entrees sont des tableaux sparse numeriques ou logiques, le resultat est un tableau sparse logique. Les operandes sparse single et single-complex sont pris en charge.

## 💡 Exemple

```matlab
ne(3, 4)
3 ~= 4
```

## 🔗 Voir aussi

[le](../operators/le.md), [ge](../operators/ge.md), [eq](../operators/eq.md).

## 🕔 Historique

| Version | 📄 Description                                            |
| ------- | --------------------------------------------------------- |
| 1.0.0   | version initiale                                          |
| 2.0.0   | operandes sparse single et single-complex pris en charge. |

<!--
## 👤 Auteur

Allan CORNET
-->
