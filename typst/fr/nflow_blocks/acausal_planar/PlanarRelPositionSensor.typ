#import "../nelson_help.typ": *

= PlanarRelPositionSensor <nflow_blocks:acausal_planar.PlanarRelPositionSensor>


#block-icon(image("PlanarRelPositionSensor.svg"))

Position relative du point du repere a moins le point du repere b selon l axe choisi (x, y).

== Syntaxe

- #raw("Type de bloc : PlanarRelPositionSensor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 1 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Position relative du point du repere a moins le point du repere b selon l axe choisi (x, y).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarRelPositionSensor");], 
  [Libelle], [PlanarRelPositionSensor], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarRelPositionSensor', 'Sensors', {'a', 'b'}, ...
    {{'axis', 'x', 'x|y'}}, 'output', ...
    'Relative position of the frame-a point minus the frame-b point along the chosen axis (x, y).');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld];, #nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed];, #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
