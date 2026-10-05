#import "../nelson_help.typ": *

= RampTorque <nflow_blocks:acausal_rotational.RampTorque>


#block-icon(image("RampTorque.svg"))

Couple en rampe sur une bride : tau \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.

== Syntaxe

- #raw("Type de bloc : RampTorque");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Couple en rampe sur une bride : tau \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("RampTorque");], 
  [Libelle], [RampTorque], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RampTorque', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'force', {{'flange', 'node'}}, ...
    {{'Slope', 'slope', 1, 'N.m/s'}, {'StartTime', 'start', 0, 's'}}, ...
    '', '', 'Ramp torque on a flange: tau = Slope (t - StartTime) for t >= StartTime, else 0.');
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
