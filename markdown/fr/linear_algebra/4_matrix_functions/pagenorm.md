# pagenorm

Norme matricielle ou vectorielle page par page.

## 📝 Syntaxe

- Y = pagenorm(X)
- Y = pagenorm(X, p)

## 📥 Argument d'entrée

- X - Tableau N-D. Chaque page est X(:,:,i,...).
- p - ordre de la norme : 2 (par defaut, plus grande valeur singuliere), 1, Inf ou 'fro'.

## 📤 Argument de sortie

- Y - tableau des normes de chaque page, de taille [1 1 size(X,3) ...].

## 📄 Description

<b>pagenorm(X)</b> calcule la norme 2 de chaque page X(:,:,i,...) du tableau N-D X et les retourne dans un tableau dont les deux premieres dimensions sont singleton.

<b>pagenorm(X, p)</b> utilise la norme d'ordre p : 1, 2, Inf ou 'fro'. Lorsqu'une page est un vecteur, la norme vectorielle correspondante est utilisee.

## 💡 Exemple

```matlab
X = cat(3, [1 2; 3 4], [5 6; 7 8]);
Y = pagenorm(X)
```

## 🔗 Voir aussi

[norm](../../elementary_functions/norm.md), [pagemtimes](../../linear_algebra/pagemtimes.md), [pagetranspose](../../linear_algebra/pagetranspose.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
