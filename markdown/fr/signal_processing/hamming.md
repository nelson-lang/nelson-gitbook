# hamming

Fenêtre de Hamming.

## Syntaxe

- c = hamming(m)
- c = hamming(m, opt)

## Argument d'entrée

- m - entier positif : longueur de la fenêtre
- opt - chaîne : 'symetric' (par défaut) ou 'periodic'

## Argument de sortie

- c - vecteur colonne

## Description

<p>
        c = hamming(m) calcule les coefficients d'une fenêtre de Hamming de longueur m.</p>

## Bibliographie

Oppenheim, Alan V., Ronald W. Schafer, et John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

## Exemple

```matlab
c = hamming(8)
c = hamming(8, 'periodic')
```

## Voir aussi

[hann](../signal_processing/hann.md), [blackman](../signal_processing/blackman.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
