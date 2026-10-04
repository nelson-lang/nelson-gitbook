# eq

égalité, opérateur ==

## 📝 Syntaxe

- C = eq(A, B)
- C = (A == B)

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A == B

## 📄 Description

<b>C = eq(A, B)</b> renvoie un tableau logique avec des éléments égaux à<b>true</b> lorsque les tableaux A et B sont égaux.

<b>eq</b> compare à la fois les parties réelles et imaginaires des tableaux numériques.

Lorsque les entrees sont des tableaux sparse numeriques ou logiques, le resultat est un tableau sparse logique. Les operandes sparse single et single-complex sont pris en charge.

## 💡 Exemples

```matlab
eye(2,2) == ones(2, 2)
```

```matlab
0 == i
```

```matlab
'Nelson' == 'Noslen'
```

```matlab
"Nelson" == "Noslen"
```

```matlab
'Nelson' == 'l'
```

```matlab
eq(0.8-0.6-0.2, 0)
```

```matlab
S = sparse(single([1 + 2i 0; 0 3]));
R = S == single([1 + 2i 5; 0 0])
```

## 🔗 Voir aussi

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [ge](../operators/ge.md).

## 🕔 Historique

| Version | 📄 Description                                            |
| ------- | --------------------------------------------------------- |
| 1.0.0   | version initiale                                          |
| 2.0.0   | operandes sparse single et single-complex pris en charge. |

<!--
## 👤 Auteur

Allan CORNET
-->
