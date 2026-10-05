#import "../nelson_help.typ": *

= EMF <nflow_blocks:acausal_rotational.EMF>


#block-icon(image("EMF.svg"))

Convertisseur electromecanique (moteur\/generateur) : force contre-electromotrice v \= k w, couple tau \= k i.

== Syntaxe

- #raw("Type de bloc : EMF");

== Argument d'entrée

/ broches physiques: 3 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Rotation (acausal)). Convertisseur electromecanique (moteur\/generateur) : force contre-electromotrice v \= k w, couple tau \= k i.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Rotation (acausal)], 
  [Type], [#raw("EMF");], 
  [Libelle], [EMF], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_rotational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('EMF', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'force', {{'p', 'a'}, {'n', 'b'}, {'flange', 'node'}}, {{'k', 'k', 1, 'N.m/A'}}, '', '', ...
    'Electro-mechanical converter (motor/generator): back-emf v = k w, torque tau = k i.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_rotational.Inertia>)[Inertia];, #nlink(<nflow_blocks:acausal_rotational.RotSpring>)[RotSpring];, #nlink(<nflow_blocks:acausal_rotational.RotDamper>)[RotDamper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
