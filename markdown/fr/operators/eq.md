# eq

égalité, opérateur ==

## Syntaxe

- C = eq(A, B)
- C = (A == B)

## Argument d'entrée

- A - une variable
- B - une variable

## Argument de sortie

- C - résultat de A == B

## Description

<p>C = eq(A, B) renvoie un tableau logique avec des éléments égaux à true lorsque les tableaux A et B sont égaux.</p>

<p>eq compare à la fois les parties réelles et imaginaires des tableaux numériques.</p>

## Exemples

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

## Voir aussi

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [ge](../operators/ge.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
