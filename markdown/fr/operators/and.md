# and

opérateur logique 'AND', &

## Syntaxe

- C = and(A, B)
- C = A & B

## Argument d'entrée

- A - une variable
- B - une variable

## Argument de sortie

- C - résultat de A & B

## Description

<p>
            C = and(A, B) effectue une opération logique AND.</p>

## Exemple

```matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A & B
D = and(B, A)
C == D
```

## Voir aussi

[or](../operators/or.md), [xor](../logical/xor.md), [all](../logical/all.md), [any](../logical/any.md), [not](../operators/not.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
