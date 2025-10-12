# gamma

Fonction spéciale gamma

## Syntaxe

- R = gamma(M)

## Argument d'entrée

- M - une matrice réelle simple ou double.

## Argument de sortie

- R - résultat de la fonction gamma.

## Description

<p>
            gamma calcule la fonction gamma.
        </p>

<p>La fonction gamma est définie par l'intégrale :</p>

$$\Gamma(z) = \int_0^{\infty} t^{z-1} e^{-t} \, dt$$

<p>pour</p>

$$\text{Re}(z) > 0$$

<p>La fonction gamma étend la fonction factorielle aux nombres réels et complexes :</p>

$$\Gamma(n) = (n-1)!$$

<p>pour les entiers positifs</p>

$$n$$

<p>Propriétés importantes :</p>

$$\Gamma(z+1) = z\Gamma(z)$$
(relation de récurrence)

$$\Gamma(1/2) = \sqrt{\pi}$$

## Exemple

```matlab
R = gamma([-pi:0.1:pi])
```

## Voir aussi

[gammaln](../special_functions/gammaln.md), [factorial](../elementary_functions/factorial.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
