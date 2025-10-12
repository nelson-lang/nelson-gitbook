# ctranspose

Renvoie la transposée conjuguée complexe : opérateur '

## Syntaxe

- C= ctranspose(A)
- C = A'

## Argument d'entrée

- A - une variable

## Argument de sortie

- C - résultat : transposée conjuguée complexe de A.

## Description

<p>C = ctranspose(A) renvoie la transposée conjuguée complexe de A.</p>

## Exemples

```matlab
A = 3
B = A'
```

```matlab
A = -i
B = A'
```

```matlab
 A = sparse(eye(3, 4) * i)
B = A'
```

## Voir aussi

[transpose](../operators/transpose.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
