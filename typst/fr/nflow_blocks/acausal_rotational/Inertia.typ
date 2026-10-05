#import "../nelson_help.typ": *

= Inertia <nflow_blocks:acausal_rotational.Inertia>


#block-icon(image("Inertia.svg"))

Inertie en rotation : J dw\/dt \= tau\_net.

== Syntaxe

- #raw("Type de bloc : Inertia");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Inertie en rotation : J dw\/dt \= tau\_net.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("Inertia");], 
  [Libelle], [Inertia], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Inertia', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'mass', {{'flange', 'node'}}, ...
    {{'J', 'm', 1, 'kg.m2'}, {'phi0', 's0', 0, 'rad'}, {'w0', 'v0', 0, 'rad/s'}}, '', '', ...
    'Rotational inertia: J dw/dt = tau_net.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_rotational.EMF>)[EMF];, #nlink(<nflow_blocks:acausal_rotational.RotSpring>)[RotSpring];, #nlink(<nflow_blocks:acausal_rotational.RotDamper>)[RotDamper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
