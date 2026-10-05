#import "../nelson_help.typ": *

= Clutch <nflow_blocks:acausal_rotational.Clutch>


#block-icon(image("Clutch.svg"))

Embrayage rotatif (adherence-glissement sans evenement) : tau \= tau\_max tanh((w\_a - w\_b) \/ w\_eps) reduit le glissement vers une vitesse commune.

== Syntaxe

- #raw("Type de bloc : Clutch");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Embrayage rotatif (adherence-glissement sans evenement) : tau \= tau\_max tanh((w\_a - w\_b) \/ w\_eps) reduit le glissement vers une vitesse commune.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("Clutch");], 
  [Libelle], [Clutch], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Clutch', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'clutch', {{'a', 'a'}, {'b', 'b'}}, {{'tau_max', 'Fc', 1, 'N.m'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'Rotational clutch (event-free stick-slip): tau = tau_max tanh((w_a - w_b) / w_eps) reduces the slip toward a common speed.');
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
