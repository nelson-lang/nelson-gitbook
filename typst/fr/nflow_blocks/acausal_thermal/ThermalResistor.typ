#import "../nelson_help.typ": *

= ThermalResistor <nflow_blocks:acausal_thermal.ThermalResistor>


#block-icon(image("ThermalResistor.svg"))

Resistance thermique : Q\_flow \= (T\_a - T\_b) \/ R.

== Syntaxe

- #raw("Type de bloc : ThermalResistor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Thermique (acausal)). Resistance thermique : Q\_flow \= (T\_a - T\_b) \/ R.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Thermique (acausal)], 
  [Type], [#raw("ThermalResistor");], 
  [Libelle], [ThermalResistor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ThermalResistor', 'Thermal', 'thermal', 'physicalIsland', ...
    'resistor', {{'a', 'a'}, {'b', 'b'}}, {{'R', 'R', 1, 'K/W'}}, '', '', ...
    'Thermal resistor: Q_flow = (T_a - T_b) / R.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_thermal.HeatCapacitor>)[HeatCapacitor];, #nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor];, #nlink(<nflow_blocks:acausal_thermal.ConvectiveResistor>)[ConvectiveResistor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
