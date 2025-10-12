# gammaln

Logarithme de la fonction gamma

## Syntaxe

- R = gammaln(M)

## Argument d'entrée

- M - une matrice réelle simple ou double.

## Argument de sortie

- R - résultat de la fonction gammaln.

## Description

<p>La fonction gammaln(A) calcule le logarithme naturel de la fonction gamma pour une entrée donnée A, exprimé comme gammaln(A) = log(gamma(A)).</p>

<p>Il est important de noter que A doit être un nombre réel non négatif.</p>

<p>L'utilisation de gammaln aide à prévenir les problèmes potentiels de sous-débordement et de débordement qui pourraient survenir si l'on calculait directement log(gamma(A)).</p>

## Exemple

```matlab
R = gammaln([0:0.1:pi])
```

## Voir aussi

[gamma](../special_functions/gamma.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
