# gt

supérieur à, opérateur >

## 📝 Syntaxe

- C = gt(A, B)
- C = (A > B)

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A > B

## 📄 Description

<b>C = gt(A, B)</b> returns a logical array with elements set to logical <b>true</b> A is greater than B.

<b>gt</b> compare uniquement la partie réelle des tableaux numériques.

## 💡 Exemples

```matlab
eye(2,2) > ones(2, 2)
```

```matlab
0 > i
```

```matlab
'Nelson' > 'Noslen'
```

```matlab
'Nelson' > 'l'
```

```matlab
gt(0.8 - 0.6 - 0.2, 0)
```

## 🔗 Voir aussi

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [ge](../operators/ge.md), [eq](../operators/eq.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
