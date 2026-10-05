#import "../nelson_help.typ": *

= ConstantRotSpeed <nflow_blocks:acausal_rotational.ConstantRotSpeed>


#block-icon(image("ConstantRotSpeed.svg"))

Mouvement impose : la bride tourne a une vitesse angulaire constante w.

== Syntaxe

- #raw("Type de bloc : ConstantRotSpeed");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Mouvement impose : la bride tourne a une vitesse angulaire constante w.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("ConstantRotSpeed");], 
  [Libelle], [ConstantRotSpeed], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ConstantRotSpeed', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'prescribedSpeed', {{'flange', 'node'}}, {{'w', 'v', 1, 'rad/s'}, {'phi0', 's0', 0, 'rad'}}, '', '', ...
    'Prescribed motion: the flange rotates at a constant angular velocity w.');
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
