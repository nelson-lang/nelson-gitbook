#import "../nelson_help.typ": *

= ConvectiveResistor <nflow_blocks:acausal_thermal.ConvectiveResistor>


#block-icon(image("ConvectiveResistor.svg"))

Resistance convective : Q\_flow \= (T\_a - T\_b) \/ Rc avec un Rc pilote par signal.

== Syntaxe

- #raw("Type de bloc : ConvectiveResistor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 1 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Thermique (acausal)). Resistance convective : Q\_flow \= (T\_a - T\_b) \/ Rc avec un Rc pilote par signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Thermique (acausal)], 
  [Type], [#raw("ConvectiveResistor");], 
  [Libelle], [ConvectiveResistor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ConvectiveResistor', 'Thermal', 'thermal', 'physicalIsland', ...
    'variableResistor', {{'a', 'a'}, {'b', 'b'}}, {}, 'R', '', ...
    'Convective resistor: Q_flow = (T_a - T_b) / Rc with a signal-driven Rc.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_thermal.HeatCapacitor>)[HeatCapacitor];, #nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor];, #nlink(<nflow_blocks:acausal_thermal.ThermalResistor>)[ThermalResistor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
