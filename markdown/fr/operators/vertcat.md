# vertcat

Concaténation verticale.

## Syntaxe

- R = vertcat(M1, M2, ... , MN)
- R = [M1; M2; ... ; MN]

## Argument d'entrée

- M1 - une variable
- M2 - une variable
- MN - une variable

## Argument de sortie

- R - résultat de [M1; M2; ... ; MN]

## Description

<p>
            R = vertcat(M1, M2, ... , MN) renvoie la concaténation verticale de M1, M2, ... , MN le long de la dimension 1.</p>

## Exemples

```matlab
A = eye(2, 2);
B = ones(2, 2);
C = vertcat(A, B)
D = [A; B]
```

```matlab
A = 'nel';
B = 'son';
C = vertcat(A, B)
```

## Voir aussi

[horzcat](../operators/horzcat.md), [cat](../operators/cat.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
