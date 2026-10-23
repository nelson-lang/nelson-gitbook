#import "../nelson_help.typ": *

= curl <linear_algebra:1_linear_systems.curl>

Rotationnel et vitesse angulaire d'un champ de vecteurs.

== Syntaxe

- #raw("curlz = curl(X, Y, U, V)");
- #raw("curlz = curl(U, V)");
- #raw("[curlz, cav] = curl(X, Y, U, V)");
- #raw("[curlx, curly, curlz, cav] = curl(X, Y, Z, U, V, W)");
- #raw("[curlx, curly, curlz, cav] = curl(U, V, W)");

== Argument d'entrée

/ X, Y, Z: Coordonnées de la grille (meshgrid). Optionnel ; une grille unitaire par défaut est utilisée sinon.
/ U, V, W: Composantes du champ de vecteurs (même taille).

== Argument de sortie

/ curlx, curly, curlz: Composantes du rotationnel du champ de vecteurs.
/ cav: Vitesse angulaire, égale à la moitié du rotationnel.

== Description

#strong[curl]; calcule le rotationnel d'un champ de vecteurs 2-D ou 3-D. En deux dimensions il renvoie la seule composante hors-plan #strong[curlz]; ; en trois dimensions il renvoie les trois composantes du rotationnel. La vitesse angulaire #strong[cav]; vaut la moitié du rotationnel.

 Les dérivées partielles sont évaluées avec #strong[gradient]; sur la grille définie par #strong[X];, #strong[Y]; (et #strong[Z];).


== Fonction(s) utilisée(s)

gradient

== Exemple

``````matlab
[x, y] = meshgrid(-3:3, -3:3);
u = -y;
v = x;
curlz = curl(x, y, u, v)
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.gradient>)[gradient];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
