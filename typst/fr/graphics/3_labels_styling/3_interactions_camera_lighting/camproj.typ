#import "../../nelson_help.typ": *

= camproj <graphics:3_labels_styling.3_interactions_camera_lighting.camproj>

Définit ou interroge le type de projection de la caméra.

== Syntaxe

- #raw("camproj");
- #raw("p = camproj");
- #raw("camproj('orthographic')");
- #raw("camproj('perspective')");
- #raw("camproj(ax, ...)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes.
/ type: Le type de projection : 'orthographic' ou 'perspective'.

== Argument de sortie

/ p: Le type de projection actuel.

== Description

#strong[camproj]; définit ou interroge la propriété #strong[Projection]; d'un axes.

 Une projection #strong[orthographic]; conserve les lignes parallèles parallèles et une taille apparente indépendante de la distance. Une projection #strong[perspective]; ajoute l'effet de perspective : les objets plus éloignés de la caméra paraissent plus petits.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
p = camproj()
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camva>)[camva];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.campos>)[campos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
