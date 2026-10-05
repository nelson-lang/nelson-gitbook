#import "../nelson_help.typ": *

= PlanarVelocitySensor <nflow_blocks:acausal_planar.PlanarVelocitySensor>


#block-icon(image("PlanarVelocitySensor.svg"))

Vitesse absolue du point du repere a selon l axe choisi (x, y) ou la vitesse angulaire (omega).

== Syntaxe

- #raw("Type de bloc : PlanarVelocitySensor");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 1 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Vitesse absolue du point du repere a selon l axe choisi (x, y) ou la vitesse angulaire (omega).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarVelocitySensor");], 
  [Libelle], [PlanarVelocitySensor], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarVelocitySensor', 'Sensors', {'a'}, ...
    {{'axis', 'x', 'x|y|omega'}}, 'output', ...
    'Absolute velocity of the frame-a point along the chosen axis (x, y) or the angular velocity (omega).');
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
