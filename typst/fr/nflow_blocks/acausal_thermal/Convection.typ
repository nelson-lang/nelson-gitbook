#import "../nelson_help.typ": *

= Convection <nflow_blocks:acausal_thermal.Convection>


#block-icon(image("Convection.svg"))

Convection : Q\_flow \= Gc (T\_a - T\_b) avec un coefficient Gc pilote par signal.

== Syntaxe

- #raw("Type de bloc : Convection");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 1 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Thermique (acausal)). Convection : Q\_flow \= Gc (T\_a - T\_b) avec un coefficient Gc pilote par signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Thermique (acausal)], 
  [Type], [#raw("Convection");], 
  [Libelle], [Convection], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Convection', 'Thermal', 'thermal', 'physicalIsland', ...
    'variableConductor', {{'a', 'a'}, {'b', 'b'}}, {}, 'G', '', ...
    'Convection: Q_flow = Gc (T_a - T_b) with a signal-driven coefficient Gc.');
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
