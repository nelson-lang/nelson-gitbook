# svd

Décomposition en valeurs singulières (SVD).

## Syntaxe

- s = svd(M)
- [U, S, V] = svd(M)
- [U, S, V] = svd(M, 0)
- [U, S, V] = svd(M, 'econ')

## Argument d'entrée

- M - une valeur numérique : matrice (double ou simple précision)

## Argument de sortie

- s - vecteur réel (valeurs singulières) en ordre décroissant.
- U - valeurs singulières à gauche.
- S - matrice diagonale réelle (valeurs singulières)
- V - valeurs singulières à droite.

## Description

<p>
            svd calcule la décomposition en valeurs singulières d'une matrice.
        </p>

<p>Pour une matrice</p>

$$M$$

<p>de taille</p>

$$m \times n$$

<p>, la SVD est :</p>

$$M = U\Sigma V^T$$

<p>où :
        
        
$$U$$
 est une matrice unitaire
        
$$m \times m$$

<p>(vecteurs singuliers gauches)</p>

$$\Sigma$$
est une matrice diagonale

$$m \times n$$

<p>avec des nombres réels non négatifs (valeurs singulières)</p>

$$V^T$$
est une matrice unitaire

$$n \times n$$

<p>(vecteurs singuliers droits)</p>

        </p>

<p>Les valeurs singulières</p>

$$\sigma_i$$

<p>sont arrangées en ordre décroissant :</p>

$$\sigma_1 \geq \sigma_2 \geq \ldots \geq 0$$

## Exemple

```matlab
X = eye(3, 3);
s = svd(X)
[U, S, V] = svd(X)
```

## Voir aussi

[eig](../linear_algebra/eig.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
