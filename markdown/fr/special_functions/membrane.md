# membrane

Fonctions propres de la membrane en L.

## 📝 Syntaxe

- L = membrane
- L = membrane(k)
- L = membrane(k, n)
- membrane(...)

## 📥 Argument d'entrée

- k - un entier positif : l'indice de la fonction propre (par défaut 1).
- n - un entier positif : le paramètre de grille ; le résultat est (2\*n+1)-par-(2\*n+1) (par défaut 15).

## 📤 Argument de sortie

- L - une matrice (2\*n+1)-par-(2\*n+1) : la k-ième fonction propre échantillonnée sur la grille.

## 📄 Description


<b>membrane</b> renvoie la <b>k</b>-ième fonction propre de la membrane en forme de L, échantillonnée sur une grille carrée <b>(2\*n+1)</b>-par-<b>(2\*n+1)</b>. Le domaine est le carré privé d'un quadrant ; la valeur est nulle sur la frontière et en dehors de ce domaine. 

La première fonction propre (<b>k = 1</b>) est le mode fondamental, une unique bosse positive ; les indices supérieurs ajoutent des lignes nodales et donc des valeurs négatives. Le résultat est normalisé de sorte que son amplitude maximale vaut 1 avec un pic positif. 

Appelée sans argument de sortie, <b>membrane</b> trace la surface. 

La fonction propre est obtenue par une discrétisation en différences finies du domaine, résolue par un calcul de valeurs propres en mode shift-invert (<b>eigs</b>) pour les plus petites valeurs propres.

## Fonction(s) utilisée(s)

eigs

## 💡 Exemples



```matlab
L = membrane(1, 10);
size(L)

```


```matlab
L = membrane(1, 15);
[min(L(:)), max(L(:))]

```
tracer la surface

```matlab
f = figure();
surf(membrane(1, 50), 'EdgeColor', 'none');
axis('off');

```


## 🔗 Voir aussi

[peaks](../special_functions/peaks.md), [eigs](../linear_algebra/3_eigen_singular_values/eigs.md), [surf](../graphics/1_plots/7_surfaces_volumes_polygons/surf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
