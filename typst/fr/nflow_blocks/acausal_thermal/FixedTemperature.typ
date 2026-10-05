#import "../nelson_help.typ": *

= FixedTemperature <nflow_blocks:acausal_thermal.FixedTemperature>


#block-icon(image("FixedTemperature.svg"))

Frontiere a une temperature fixe T.

== Syntaxe

- #raw("Type de bloc : FixedTemperature");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Thermique (acausal)). Frontiere a une temperature fixe T.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Thermique (acausal)], 
  [Type], [#raw("FixedTemperature");], 
  [Libelle], [FixedTemperature], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('FixedTemperature', 'Thermal', 'thermal', 'physicalIsland', ...
    'vsource', {{'port', 'a'}}, {{'T', 'V', 293.15, 'K'}}, '', '', ...
    'Boundary at a fixed temperature T.');
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
