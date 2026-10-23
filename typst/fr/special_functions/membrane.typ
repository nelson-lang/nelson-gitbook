#import "nelson_help.typ": *

= membrane <special_functions:membrane>

Fonctions propres de la membrane en L.

== Syntaxe

- #raw("L = membrane");
- #raw("L = membrane(k)");
- #raw("L = membrane(k, n)");
- #raw("membrane(...)");

== Argument d'entrée

/ k: un entier positif : l'indice de la fonction propre (par défaut 1).
/ n: un entier positif : le paramètre de grille ; le résultat est (2\*n+1)-par-(2\*n+1) (par défaut 15).

== Argument de sortie

/ L: une matrice (2\*n+1)-par-(2\*n+1) : la k-ième fonction propre échantillonnée sur la grille.

== Description

#strong[membrane]; renvoie la #strong[k];-ième fonction propre de la membrane en forme de L, échantillonnée sur une grille carrée #strong[(2\*n+1)];-par-#strong[(2\*n+1)];. Le domaine est le carré privé d'un quadrant ; la valeur est nulle sur la frontière et en dehors de ce domaine.

 La première fonction propre (#strong[k \= 1];) est le mode fondamental, une unique bosse positive ; les indices supérieurs ajoutent des lignes nodales et donc des valeurs négatives. Le résultat est normalisé de sorte que son amplitude maximale vaut 1 avec un pic positif.

 Appelée sans argument de sortie, #strong[membrane]; trace la surface.

 La fonction propre est obtenue par une discrétisation en différences finies du domaine, résolue par un calcul de valeurs propres en mode shift-invert (#strong[eigs];) pour les plus petites valeurs propres.


== Fonction(s) utilisée(s)

eigs

== Exemples

``````matlab
L = membrane(1, 10);
size(L)

``````

``````matlab
L = membrane(1, 15);
[min(L(:)), max(L(:))]

``````

tracer la surface

``````matlab
f = figure();
surf(membrane(1, 50), 'EdgeColor', 'none');
axis('off');

``````


== Voir aussi

#nlink(<special_functions:peaks>)[peaks];, #nlink(<linear_algebra:3_eigen_singular_values.eigs>)[eigs];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
