#import "nelson_help.typ": *

= stlwrite <geometry:stlwrite>

Creer un fichier STL depuis une triangulation

== Syntaxe

- #raw("stlwrite(TR, filename)");
- #raw("stlwrite(TR, filename, fileformat)");
- #raw("stlwrite(TR, filename, ..., Name, Value)");

== Description

#strong[stlwrite]; ecrit un objet #strong[triangulation]; dans un fichier STL binaire par defaut.

 #strong[fileformat]; peut valoir #strong['binary']; ou #strong['text'];. Utiliser #strong['Attribute']; avec les fichiers binaires pour ecrire une valeur #strong[uint16]; par triangle. Utiliser #strong['SolidIndex']; avec les fichiers texte pour grouper les triangles dans des sections solides.


== Exemple

Ecrire un fichier STL texte.

``````matlab
P = [0 0; 1 0; 0 1];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple_text.stl'];
stlwrite(TR, filename, 'text')
``````


== Voir aussi

#nlink(<geometry:stlread>)[stlread];, #nlink(<geometry:triangulation>)[triangulation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
