#import "../../nelson_help.typ": *

= isosurface <graphics:1_plots.7_surfaces_volumes_polygons.isosurface>

Extraire une isosurface depuis des donnees volumiques.

== Syntaxe

- #raw("isosurface(X, Y, Z, V, isovalue)");
- #raw("s = isosurface(X, Y, Z, V, isovalue)");
- #raw("s = isosurface(X, Y, Z, V)");
- #raw("s = isosurface(V, isovalue)");
- #raw("s = isosurface(V)");
- #raw("s = isosurface(..., colors)");
- #raw("s = isosurface(..., 'noshare')");
- #raw("s = isosurface(..., 'verbose')");
- #raw("[faces, vertices] = isosurface(...)");
- #raw("[faces, vertices, colors] = isosurface(...)");

== Argument d'entrée

/ X, Y, Z: Vecteurs de grille ou tableaux 3-D de meme taille que V.
/ V: Donnees volumiques 3-D numeriques reelles.
/ isovalue: Niveau scalaire utilise pour extraire la surface. Si la valeur est omise, Nelson choisit un niveau depuis les valeurs finies.
/ colors: Donnees de couleur 3-D numeriques reelles de meme taille que V.

== Argument de sortie

/ s: Structure avec les champs faces et vertices, et facevertexcdata lorsque des donnees de couleur sont fournies.
/ faces, vertices, colors: Connectivite triangulaire, coordonnees des sommets et valeurs de couleur interpolees.

== Description

#strong[isosurface]; extrait une surface triangulaire ou les donnees volumiques atteignent une valeur scalaire demandee. Sans argument de sortie, la surface est affichee comme un objet patch dans les axes courants.

 L'option #strong['noshare']; ignore la reduction des sommets partages. L'option #strong['verbose']; est acceptee pour compatibilite.


== Exemple

Afficher une isosurface depuis des donnees volumiques.

``````matlab
[x, y, z] = meshgrid(-2:0.25:2, -2:0.25:2, -2:0.25:2);
v = x.^2 + y.^2 + z.^2;
isosurface(x, y, z, v, 1);
axis equal;
``````


#align(center)[#image("isosurface_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.slice>)[slice];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.contourslice>)[contourslice];.
