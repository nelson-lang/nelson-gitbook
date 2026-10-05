#import "../nelson_help.typ": *

= HeatingResistor <nflow_blocks:acausal_electrical.HeatingResistor>


#block-icon(image("HeatingResistor.svg"))

Resistance qui dissipe sa puissance P \= v^2 \/ R sous forme de chaleur dans un port thermique.

== Syntaxe

- #raw("Type de bloc : HeatingResistor");

== Argument d'entrée

/ broches physiques: 3 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Resistance qui dissipe sa puissance P \= v^2 \/ R sous forme de chaleur dans un port thermique.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("HeatingResistor");], 
  [Libelle], [HeatingResistor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('HeatingResistor', 'Electrical', 'electrical', 'physicalIsland', ...
    'resistor', {{'p', 'a'}, {'n', 'b'}, {'heatPort', 'a', 'thermal'}}, {{'R', 'R', 1000, 'ohm'}}, '', '', ...
    'Resistor that dissipates its power P = v^2 / R as heat into a thermal port.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground];, #nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor];, #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
