#import "../../nelson_help.typ": *

= close <graphics:2_graphics_objects.1_object_management.close>

Ferme une ou plusieurs figures

== Syntaxe

- #raw("close()");
- #raw("close('all')");
- #raw("close(name)");
- #raw("close(ID)");
- #raw("close(GO)");
- #raw("tf = close(...)");

== Argument d'entrée

/ ID: une valeur entière scalaire : identifiant de la figure.
/ GO: un objet graphique scalaire sur une figure existante.
/ GO: Objet graphique scalaire sur une figure existante.

== Argument de sortie

/ tf: un scalaire logique : true si la figure a été fermée.

== Description

#strong[close]; ferme la figure courante.

 #strong[close(ID)]; ferme la figure spécifiée par l'identifiant.

 #strong[close(GO)]; ferme la figure spécifiée par l'objet graphique de la figure.

 #strong[close('all')]; ferme toutes les figures.


== Exemple

``````matlab
f = figure(1)
close();
h = figure(3)
close(h)
f1 = figure()
f2 = figure()
close('all')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
