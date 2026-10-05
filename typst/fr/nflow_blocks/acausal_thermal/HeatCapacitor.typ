#import "../nelson_help.typ": *

= HeatCapacitor <nflow_blocks:acausal_thermal.HeatCapacitor>


#block-icon(image("HeatCapacitor.svg"))

Capacite thermique concentree : C dT\/dt \= Q\_flow (port reference a 0).

== Syntaxe

- #raw("Type de bloc : HeatCapacitor");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Thermique (acausal)). Capacite thermique concentree : C dT\/dt \= Q\_flow (port reference a 0).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Thermique (acausal)], 
  [Type], [#raw("HeatCapacitor");], 
  [Libelle], [HeatCapacitor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('HeatCapacitor', 'Thermal', 'thermal', 'physicalIsland', ...
    'capacitor', {{'port', 'a'}}, ...
    {{'C', 'C', 1, 'J/K'}, {'T0', 'ic', 293.15, 'K'}}, '', '', ...
    'Lumped heat capacity: C dT/dt = Q_flow (port referenced to 0).');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor];, #nlink(<nflow_blocks:acausal_thermal.ThermalResistor>)[ThermalResistor];, #nlink(<nflow_blocks:acausal_thermal.ConvectiveResistor>)[ConvectiveResistor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
