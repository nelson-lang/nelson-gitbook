# spaugment

Construit une matrice sparse augmentee pour les moindres carres.

## 📝 Syntaxe

- S = spaugment(A)
- S = spaugment(A, c)

## 📥 Argument d'entrée

- A - matrice 2-D numerique ou logique non vide, sparse ou pleine.
- c - facteur d'echelle du residu. Le premier element est utilise. La valeur par defaut est max(max(abs(A))) / 1000.

## 📤 Argument de sortie

- S - matrice sparse augmentee.

## 📄 Description

<b>spaugment</b> construit la matrice sparse <b>[c \* I, A; A', 0]</b>.

Cette matrice est utile pour reecrire des problemes sparse de moindres carres sous forme de systemes symetriques indefinis.

Les entrees double, single, logiques, double complexes et single complexes sont prises en charge. La sortie est sparse, et les entrees sparse numeriques single conservent la classe single.

Les valeurs nulles stockees dans <b>A</b> sparse sont ignorees par les operations sparse utilisees pour former la matrice augmentee.

## 💡 Exemples

```matlab
A = sparse([1 0; 2 3; 0 4]);
S = spaugment(A, 2)

```

```matlab
A = sparse(single([1 + 2i 0; 0 3]));
S = spaugment(A, single(2))

```

## 🔗 Voir aussi

[sparse](../sparse/sparse.md), [speye](../sparse/speye.md), [lsqr](../linear_algebra/lsqr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
