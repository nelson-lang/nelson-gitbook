#import "../nelson_help.typ": *

= place <control_system:5_control_design_tuning.place>

Placement de pôles par retour d'état avec assignation robuste.

== Syntaxe

- #raw("K = place(A, B, p)");
- #raw("[K, prec] = place(A, B, p)");
- #raw("[K, prec, message] = place(A, B, p)");

== Argument d'entrée

/ A: Matrice d'état : matrice Nx-par-Nx.
/ B: Matrice d'entrée vers l'état : matrice Nx-par-Nu.
/ p: Vecteur des pôles désirés en boucle fermée, de longueur Nx.

== Argument de sortie

/ K: Matrice de gain du retour d'état : matrice Nu-par-Nx.
/ prec: Précision estimée des pôles assignés, exprimée comme un nombre approximatif de décimales exactes.
/ message: Message d'avertissement renvoyé lorsqu'un ou plusieurs pôles n'ont pas pu être placés à la précision demandée (vide sinon).

== Description

La fonction #strong[place]; calcule la matrice de gain #strong[K]; telle que les pôles en boucle fermée de #strong[A - B\*K]; soient les éléments du vecteur #strong[p];, c'est-à-dire #strong[p \= eig(A - B\*K)];.

 Contrairement à #strong[acker];, limitée aux systèmes mono-entrée, #strong[place]; prend en charge les systèmes multi-entrées (#strong[B]; à plusieurs colonnes) et choisit les vecteurs propres en boucle fermée de façon à rendre l'assignation aussi peu sensible que possible aux perturbations.

 Les pôles complexes désirés doivent être fournis par paires conjuguées. La multiplicité d'un pôle ne peut pas dépasser le rang de #strong[B];. Pour des #strong[A];, #strong[B]; et #strong[p]; réels, le gain #strong[K]; obtenu est réel.

 L'algorithme est la méthode de mise à jour de rang un décrite dans J. Kautsky, N. K. Nichols et P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, vol. 41, no. 5, pp. 1129-1155, 1985.


== Bibliographie

J. Kautsky, N. K. Nichols et P. Van Dooren, "Robust pole assignment in linear state feedback", International Journal of Control, 41(5):1129-1155, 1985.

== Exemple

``````matlab
A = [-0.5 0 0; 0 -2 10; 0 1 -2];
B = [1 0; 0 0; 0 1];
p = [-3; -5; -7];
[K, prec] = place(A, B, p)
eig(A - B * K)
``````


== Voir aussi

#nlink(<control_system:5_control_design_tuning.acker>)[acker];, #nlink(<control_system:5_control_design_tuning.lqr>)[lqr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
