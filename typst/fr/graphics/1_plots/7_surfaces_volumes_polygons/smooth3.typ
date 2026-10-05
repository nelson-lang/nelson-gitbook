#import "../../nelson_help.typ": *

= smooth3 <graphics:1_plots.7_surfaces_volumes_polygons.smooth3>

Lisser des donnees 3-D.

== Syntaxe

- #raw("W = smooth3(V)");
- #raw("W = smooth3(V, method)");
- #raw("W = smooth3(V, method, windowSize)");
- #raw("W = smooth3(V, method, windowSize, sd)");

== Argument d'entrée

/ V: Donnees volumiques 3-D reelles numeriques ou logiques.
/ method: Methode de lissage : 'box' ou 'gaussian'. La valeur par defaut est 'box'.
/ windowSize: Scalaire entier impair positif ou vecteur a trois elements. La valeur par defaut est \[3 3 3\].
/ sd: Ecart type positif pour la methode gaussian. La valeur par defaut est 0.65.

== Argument de sortie

/ W: Tableau double lisse de meme taille que V.

== Description

#strong[smooth3]; lisse des donnees volumiques avec un noyau 3-D separable box ou gaussian et des valeurs de bord repliquees.


== Exemple

Lisser un petit volume avec un noyau gaussian.

``````matlab
V = rand(10, 10, 10);
W = smooth3(V, 'gaussian', 5);
``````


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isonormals>)[isonormals];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.
