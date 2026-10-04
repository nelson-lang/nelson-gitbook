# schur

Décomposition de Schur.

## 📝 Syntaxe

- T = schur(M)
- T = schur(M, 'real')
- T = schur(M, 'complex')
- [U, T] = schur(M)
- [U, T] = schur(M, 'complex')
- [U, T] = schur(M, 'real')

## 📥 Argument d'entrée

- M - une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

## 📤 Argument de sortie

- U - unitary matrix
- T - upper triangular matrix

## 📄 Description

<b>schur(M)</b> calcule la décomposition de Schur.

Avec le drapeau 'complex', la forme de Schur complexe est triangulaire supérieure avec les valeurs propres de M sur la diagonale.

Si A est réelle, la forme de Schur réelle est retournée.

Avec le drapeau 'real', la forme de Schur réelle place les valeurs propres réelles sur la diagonale et les valeurs propres complexes en blocs 2x2 sur la diagonale.

## 💡 Exemple

```matlab
X = [1 2; 3 4];
[U, T] = schur(X)
[U, T] = schur(X * i, 'complex')
[U, T] = schur(X * i, 'real')
```

## 🔗 Voir aussi

[eig](../../linear_algebra/eig.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
