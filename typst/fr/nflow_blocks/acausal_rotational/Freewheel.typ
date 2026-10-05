#import "../nelson_help.typ": *

= Freewheel <nflow_blocks:acausal_rotational.Freewheel>


#block-icon(image("Freewheel.svg"))

Embrayage unidirectionnel : accouple la bride a a b uniquement tant que a depasse b (roue libre sinon).

== Syntaxe

- #raw("Type de bloc : Freewheel");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Embrayage unidirectionnel : accouple la bride a a b uniquement tant que a depasse b (roue libre sinon).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("Freewheel");], 
  [Libelle], [Freewheel], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Freewheel', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'freewheel', {{'a', 'a'}, {'b', 'b'}}, {{'d', 'd', 100, 'N.m.s/rad'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).');
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
