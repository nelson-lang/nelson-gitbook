#import "nelson_help.typ": *

= stlread <geometry:stlread>

Creer une triangulation depuis un fichier STL

== Syntaxe

- #raw("TR = stlread(filename)");
- #raw("[TR, fileformat, attributes, solidID] = stlread(filename)");

== Description

#strong[stlread]; lit les fichiers STL binaires ou texte et retourne un objet #strong[triangulation];.

 #strong[fileformat]; vaut #strong['binary']; ou #strong['text'];. Pour les fichiers binaires, #strong[attributes]; est un vecteur colonne #strong[uint16];. Pour les fichiers texte, #strong[attributes]; est une matrice #strong[uint16]; vide avec une ligne par triangle. #strong[solidID]; est un vecteur colonne identifiant le groupe solide de chaque triangle.


== Exemple

Ecrire et lire un fichier STL simple.

``````matlab
P = [0 0 0; 1 0 0; 0 1 0];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple.stl'];
stlwrite(TR, filename);
[TR2, fileformat, attributes, solidID] = stlread(filename)
``````


== Voir aussi

#nlink(<geometry:stlwrite>)[stlwrite];, #nlink(<geometry:triangulation>)[triangulation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
