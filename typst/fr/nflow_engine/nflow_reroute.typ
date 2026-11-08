#import "nelson_help.typ": *

= nflow\_reroute <nflow_engine:nflow_reroute>

Recalcule le tracé des fils d'un (sous-)système nflow.

== Syntaxe

- #raw("nflow_reroute(sys)");
- #raw("nflow_reroute(sys, width)");
- #raw("nflow_reroute(sys, width, height)");

== Argument d'entrée

/ sys: une chaîne : nom d'un modèle chargé (#raw("'modele'");) pour tracer les fils de son diagramme racine, ou chemin d'un sous-système (#raw("'modele/Sub'");, #raw("'modele/Sub/Inner'");) pour tracer ceux de ce sous-système ; ou un handle numérique de modèle.
/ width: un scalaire : largeur de la zone de tracé, en unités du diagramme. Par défaut : 4000.
/ height: un scalaire : hauteur de la zone de tracé, en unités du diagramme. Par défaut : 4000.

== Description

#strong[nflow\_reroute]; calcule un nouveau tracé pour chaque connexion d'un (sous-)système et l'enregistre sur la connexion sous forme de liste de points de passage. Les tracés sont orthogonaux et contournent les blocs, du port de sortie au port d'entrée.

 Les blocs ne bougent pas : appelez d'abord #strong[nflow\_layout]; pour les disposer, puis #strong[nflow\_reroute]; pour tracer les fils selon les nouvelles positions. La position des ports est estimée à partir du nombre de ports déclaré par chaque type de bloc.

 Seul le niveau ciblé est tracé : appelez #strong[nflow\_reroute]; sur le chemin de chaque sous-système pour le tracer aussi. Seule la géométrie des fils change, le résultat de simulation ne change donc pas.

 Le modèle doit être chargé (#strong[new\_system]; ou #strong[load\_system];). Un chemin de sous-système inconnu, ou un échec du tracé, provoque une erreur. Le modèle est marqué comme modifié ; utilisez #strong[save\_system]; pour conserver les tracés.


== Exemple

Disposer un modèle, tracer ses fils et lire le tracé enregistré.

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G', 'Gain', 2);
add_line('demo', 'S/1', 'G/1');
nflow_layout('demo');
nflow_reroute('demo');
f = [tempname(), '.nflow'];
save_system('demo', f);
m = jsondecode(fileread(f));
w = m.connections(1).waypoints;
[[w.x]', [w.y]']
bdclose('demo');
rmfile(f);
``````


== Voir aussi

#nlink(<nflow_engine:nflow_layout>)[nflow\_layout];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:save_system>)[save\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
