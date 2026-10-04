# nthroot

La racine 𝑛-ième réelle d'un nombre réel.

## 📝 Syntaxe

- Y = nthroot(X, N)

## 📥 Argument d'entrée

- X - Tableau d'entrée : scalaire, vecteur, matrice ou tableau multidimensionnel.
- N - Racines à calculer : scalaire ou tableau de même taille que X.

## 📤 Argument de sortie

- Y - résultat de 'nthroot'.

## 📄 Description

<b>𝑌 = nthroot(𝑋, 𝑁)</b> renvoie la racine 𝑛-ième réelle des éléments de <b>𝑋</b>.

<b>𝑋</b> et<b>𝑁</b> doivent être des scalaires réels ou des tableaux de même taille. Si un élément de<b>𝑋</b> est négatif, l'élément correspondant de<b>𝑁</b> doit être un entier impair.

Lors du calcul de racines pour lesquelles il existe à la fois des racines réelles et complexes, la fonction <b>power</b> ne calcule efficacement que les racines complexes.

Pour obtenir la racine réelle dans ce cas, utilisez plutôt la fonction nthroot.

## 💡 Exemple

```matlab
X = [-2 -3 -2; 4 -2 -5]
N = [1 -1 3; 1/2 5 3]
Y = nthroot(X, N)
```

## 🔗 Voir aussi

[power](../../operators/power.md), [sqrt](../../elementary_functions/sqrt.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.6.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
