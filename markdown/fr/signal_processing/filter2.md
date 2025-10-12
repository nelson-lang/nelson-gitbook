# filter2

Filtre numérique 2-D.

## Syntaxe

- Y = filter2(H, X)
- Y = filter2(H, X, shape)

## Argument d'entrée

- H - coefficients de la fonction de transfert rationnelle.
- X - données d'entrée.
- shape - 'same' (par défaut), 'valid' ou 'full'.

## Argument de sortie

- Y - résultat : filtre numérique 2-D.

## Description

<p>
        Y = filter2(H, X) applique un filtre à réponse impulsionnelle finie à une matrice de données X selon les coefficients de la matrice H.</p>

## Exemple

```matlab
A = zeros(10);
A(3:7, 3:7) = ones(5);
H = [1 2 1; 0 0 0; -1 -2 -1];
R = filter2(H, A, 'valid')
```

## Voir aussi

[conv2](../data_analysis/conv2.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
