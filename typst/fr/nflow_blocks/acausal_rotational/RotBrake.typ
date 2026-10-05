#import "../nelson_help.typ": *

= RotBrake <nflow_blocks:acausal_rotational.RotBrake>


#block-icon(image("RotBrake.svg"))

Frein rotatif actionne par signal par rapport au bati : l entree fixe le couple de freinage maximal.

== Syntaxe

- #raw("Type de bloc : RotBrake");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 1 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Frein rotatif actionne par signal par rapport au bati : l entree fixe le couple de freinage maximal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("RotBrake");], 
  [Libelle], [RotBrake], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RotBrake', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'brake', {{'flange', 'node'}}, {{'w_eps', 'vEps', 0.001, 'rad/s'}}, 'f', '', ...
    'Signal-actuated rotational brake to ground: the input sets the peak braking torque.');
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
