# conv

Convolution et multiplication de polynômes.

## Syntaxe

- C = conv(u, v)
- C = conv(u, v, shape)

## Argument d'entrée

- u - vecteurs d'entrée, spécifiés comme vecteurs lignes ou colonnes.
- v - vecteurs d'entrée, spécifiés comme vecteurs lignes ou colonnes.
- shape - sous-partie de la convolution : 'full' (par défaut : convolution 2D complète), 'same' (partie centrale de la convolution) ou 'valid' (parties de la convolution calculées sans bords remplis de zéros).

## Argument de sortie

- C - convolution, renvoyée sous forme de vecteur ou de matrice.

## Description

<p>
                        conv renvoie la convolution des vecteurs u et v.</p>

## Exemple

```matlab
U = [-1 2 3 -2 0 1 2];
V = [2 4 -1 1];
R = conv(U, V, 'same')
```

## Voir aussi

[conv](../data_analysis/conv.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
