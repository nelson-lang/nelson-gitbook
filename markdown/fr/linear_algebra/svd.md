# svd

Décomposition en valeurs singulières (SVD).

## 📝 Syntaxe

- s = svd(M)
- [U, S, V] = svd(M)
- [U, S, V] = svd(M, 0)
- [U, S, V] = svd(M, 'econ')

## 📥 Argument d'entrée

- M - une valeur numérique : matrice (double ou simple précision)

## 📤 Argument de sortie

- s - vecteur réel (valeurs singulières) en ordre décroissant.
- U - valeurs singulières à gauche.
- S - matrice diagonale réelle (valeurs singulières)
- V - valeurs singulières à droite.

## 📄 Description

<b>svd</b> calcule la décomposition en valeurs singulières d'une matrice.

Pour une matrice
$$M$$

de taille
$$m \times n$$

, la SVD est :
$$M = U\Sigma V^T$$

où :

- $$U$$
  est une matrice unitaire
  $$m \times m$$

(vecteurs singuliers gauches)

- $$\Sigma$$
  est une matrice diagonale
  $$m \times n$$

avec des nombres réels non négatifs (valeurs singulières)

- $$V^T$$
  est une matrice unitaire
  $$n \times n$$

(vecteurs singuliers droits)

Les valeurs singulières
$$\sigma_i$$

sont arrangées en ordre décroissant :
$$\sigma_1 \geq \sigma_2 \geq \ldots \geq 0$$

## 💡 Exemple

```matlab
X = eye(3, 3);
s = svd(X)
[U, S, V] = svd(X)
```

## 🔗 Voir aussi

[eig](../linear_algebra/eig.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
