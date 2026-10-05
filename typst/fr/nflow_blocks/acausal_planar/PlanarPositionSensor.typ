#import "../nelson_help.typ": *

= PlanarPositionSensor <nflow_blocks:acausal_planar.PlanarPositionSensor>


#block-icon(image("PlanarPositionSensor.svg"))

Position absolue du point du repere a selon l axe choisi (x, y) ou l angle du corps (phi).

== Syntaxe

- #raw("Type de bloc : PlanarPositionSensor");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 1 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Position absolue du point du repere a selon l axe choisi (x, y) ou l angle du corps (phi).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarPositionSensor");], 
  [Libelle], [PlanarPositionSensor], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarPositionSensor', 'Sensors', {'a'}, ...
    {{'axis', 'x', 'x|y|phi'}}, 'output', ...
    'Absolute position of the frame-a point along the chosen axis (x, y) or the body angle (phi).');
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
