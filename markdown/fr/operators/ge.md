# ge

supérieur ou égal, opérateur >=

## 📝 Syntaxe

- C = ge(A, B)
- C = (A >= B)

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A >= B

## 📄 Description

<b>C = ge(A, B)</b> returns a logical array with elements set to logical<b>true</b> A is greater than or equal to B.

<b>ge</b> compare uniquement la partie réelle des tableaux numériques.

Lorsque les entrees sont des tableaux sparse numeriques ou logiques, le resultat est un tableau sparse logique. Les operandes sparse single et single-complex sont pris en charge.

Pour les tableaux sparse complexes, les comparaisons d'ordre utilisent le module de chaque valeur.

## 💡 Exemples

```matlab
eye(2,2) >= ones(2, 2)
```

```matlab
0 >= i
```

```matlab
'Nelson' >= 'Noslen'
```

```matlab
'Nelson' >= 'l'
```

```matlab
ge(0.8-0.6-0.2, 0)
```

## 🔗 Voir aussi

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## 🕔 Historique

| Version | 📄 Description                                            |
| ------- | --------------------------------------------------------- |
| 1.0.0   | version initiale                                          |
| 2.0.0   | operandes sparse single et single-complex pris en charge. |

<!--
## 👤 Auteur

Allan CORNET
-->
