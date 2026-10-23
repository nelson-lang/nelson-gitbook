# place

Placement de pôles par retour d'état avec assignation robuste.

## 📝 Syntaxe

- K = place(A, B, p)
- [K, prec] = place(A, B, p)
- [K, prec, message] = place(A, B, p)

## 📥 Argument d'entrée

- A - Matrice d'état : matrice Nx-par-Nx.
- B - Matrice d'entrée vers l'état : matrice Nx-par-Nu.
- p - Vecteur des pôles désirés en boucle fermée, de longueur Nx.

## 📤 Argument de sortie

- K - Matrice de gain du retour d'état : matrice Nu-par-Nx.
- prec - Précision estimée des pôles assignés, exprimée comme un nombre approximatif de décimales exactes.
- message - Message d'avertissement renvoyé lorsqu'un ou plusieurs pôles n'ont pas pu être placés à la précision demandée (vide sinon).

## 📄 Description


La fonction <b>place</b> calcule la matrice de gain <b>K</b> telle que les pôles en boucle fermée de <b>A - B\*K</b> soient les éléments du vecteur <b>p</b>, c'est-à-dire <b>p = eig(A - B\*K)</b>. 

Contrairement à <b>acker</b>, limitée aux systèmes mono-entrée, <b>place</b> prend en charge les systèmes multi-entrées (<b>B</b> à plusieurs colonnes) et choisit les vecteurs propres en boucle fermée de façon à rendre l'assignation aussi peu sensible que possible aux perturbations. 

Les pôles complexes désirés doivent être fournis par paires conjuguées. La multiplicité d'un pôle ne peut pas dépasser le rang de <b>B</b>. Pour des <b>A</b>, <b>B</b> et <b>p</b> réels, le gain <b>K</b> obtenu est réel. 

L'algorithme est la méthode de mise à jour de rang un décrite dans J. Kautsky, N. K. Nichols et P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, vol. 41, no. 5, pp. 1129-1155, 1985.

## 📚 Bibliographie

J. Kautsky, N. K. Nichols et P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, 41(5):1129-1155, 1985.

## 💡 Exemple



```matlab
A = [-0.5 0 0; 0 -2 10; 0 1 -2];
B = [1 0; 0 0; 0 1];
p = [-3; -5; -7];
[K, prec] = place(A, B, p)
eig(A - B * K)
```


## 🔗 Voir aussi

[acker](../../control_system/5_control_design_tuning/acker.md), [lqr](../../control_system/5_control_design_tuning/lqr.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
