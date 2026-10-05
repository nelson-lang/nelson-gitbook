#import "../nelson_help.typ": *

= PrescribedTemperature <nflow_blocks:acausal_thermal.PrescribedTemperature>


#block-icon(image("PrescribedTemperature.svg"))

Frontiere de temperature pilotee par le signal d entree.

== Syntaxe

- #raw("Type de bloc : PrescribedTemperature");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 1 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Thermique (acausal)). Frontiere de temperature pilotee par le signal d entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Thermique (acausal)], 
  [Type], [#raw("PrescribedTemperature");], 
  [Libelle], [PrescribedTemperature], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('PrescribedTemperature', 'Thermal', 'thermal', 'physicalIsland', ...
    'vsource', {{'port', 'a'}}, {}, 'V', '', ...
    'Temperature boundary driven by the input signal.');
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
