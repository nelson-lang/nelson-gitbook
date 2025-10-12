# ge

supérieur ou égal, opérateur >=

## Syntaxe

- C = ge(A, B)
- C = (A >= B)

## Argument d'entrée

- A - une variable
- B - une variable

## Argument de sortie

- C - résultat de A >= B

## Description

<p>
            C = ge(A, B) returns a logical array with elements set to logical true A is greater than or equal to B.</p>

<p>ge compare uniquement la partie réelle des tableaux numériques.</p>

## Exemples

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

## Voir aussi

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
