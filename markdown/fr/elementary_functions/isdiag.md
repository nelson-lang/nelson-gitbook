# isdiag

Vérifie si une matrice est diagonale.

## Syntaxe

- tf = isdiag(M)

## Argument d'entrée

- M - un tableau numérique

## Argument de sortie

- tf - booléen : résultat de 'isdiag'.

## Description

<p>
            isdiag renvoie un scalaire booléen si la matrice est diagonale.</p>

## Exemple

```matlab
A = eye(3, 3);
R = isdiag(A)
R = isdiag(A(:,1))
```

## Voir aussi

[istriu](../elementary_functions/istriu.md), [istril](../elementary_functions/istril.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
