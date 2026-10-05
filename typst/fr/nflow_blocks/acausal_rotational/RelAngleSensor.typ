#import "../nelson_help.typ": *

= RelAngleSensor <nflow_blocks:acausal_rotational.RelAngleSensor>


#block-icon(image("RelAngleSensor.svg"))

Mesure l angle relatif phi\_a - phi\_b entre deux brides.

== Syntaxe

- #raw("Type de bloc : RelAngleSensor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 1 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Mesure l angle relatif phi\_a - phi\_b entre deux brides.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("RelAngleSensor");], 
  [Libelle], [RelAngleSensor], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RelAngleSensor', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'relPositionSensor', {{'a', 'a'}, {'b', 'b'}}, {}, '', 'angle', ...
    'Measures the relative angle phi_a - phi_b between two flanges.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_rotational.EMF>)[EMF];, #nlink(<nflow_blocks:acausal_rotational.Inertia>)[Inertia];, #nlink(<nflow_blocks:acausal_rotational.RotSpring>)[RotSpring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
