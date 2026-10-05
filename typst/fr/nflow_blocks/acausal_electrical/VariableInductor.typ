#import "../nelson_help.typ": *

= VariableInductor <nflow_blocks:acausal_electrical.VariableInductor>


#block-icon(image("VariableInductor.svg"))

Bobine dont l inductance L est definie par un signal (formulation exacte en flux phi).

== Syntaxe

- #raw("Type de bloc : VariableInductor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 1 entree(s) signal.

== Argument de sortie

/ ports signal: 0 sortie(s) signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Bobine dont l inductance L est definie par un signal (formulation exacte en flux phi).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("VariableInductor");], 
  [Libelle], [VariableInductor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('VariableInductor', 'Electrical', 'electrical', 'physicalIsland', ...
    'variableInductor', {{'p', 'a'}, {'n', 'b'}}, {{'phi0', 'ic', 0, 'Wb'}}, 'L', '', ...
    'Inductor whose inductance L is set by a signal (exact flux phi formulation).');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground];, #nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor];, #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
