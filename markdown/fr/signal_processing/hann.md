# hann

Fenêtre de Hann.

## Syntaxe

- c = hann(m)
- c = hann(m, opt)

## Argument d'entrée

- m - entier positif : longueur de la fenêtre
- opt - chaîne : 'symetric' (par défaut) ou 'periodic'

## Argument de sortie

- c - vecteur colonne

## Description

<p>
        c = hann(m) calcule les coefficients d'une fenêtre de Hann de longueur m.</p>

## Bibliographie

Oppenheim, Alan V., Ronald W. Schafer, et John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

## Exemple

```matlab
c = hann(8)
c = hann(8, 'periodic')
```

## Voir aussi

[hamming](../signal_processing/hamming.md), [blackman](../signal_processing/blackman.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
