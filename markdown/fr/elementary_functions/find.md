# find

Trouver les éléments non nuls

## 📝 Syntaxe

- K = find(M)
- [R, C] = find(M)
- [R, C, V] = find(M)
- K = find(M, N)
- [R, C] = find(M, N)
- [R, C, V] = find(M, N)
- K = find(M, N, D)
- [R, C] = find(M, N, D)
- [R, C, V] = find(M, N, D)

## 📥 Argument d'entrée

- M - un scalaire, vecteur, matrice ou tableau multidimensionnel.
- N - entier positif : nombre de non-zéros à trouver.
- D - direction : 'first' (par défaut) ou 'last'.

## 📤 Argument de sortie

- K - indices des éléments non nuls (vecteur).
- R - indices de lignes (vecteur).
- C - indices de colonnes (vecteur).
- V - éléments non nuls de M (vecteur).

## 📄 Description

<b>K = find(M)</b> renvoie un vecteur contenant les indices linéaires de chaque élément non nul de <b>M</b>.

## 💡 Exemple

```matlab
M = rand(4, 3, 5);
[R, C, V] = find(M > 0.9)
M(R(1),C(1),V(1))
```

## 🔗 Voir aussi

[strfind](../string/strfind.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
