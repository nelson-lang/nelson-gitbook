#import "../nelson_help.typ": *

= BodyRadiation <nflow_blocks:acausal_thermal.BodyRadiation>


#block-icon(image("BodyRadiation.svg"))

Rayonnement (Stefan-Boltzmann) : Q\_flow \= Gr (T\_a^4 - T\_b^4).

== Syntaxe

- #raw("Type de bloc : BodyRadiation");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Thermique (acausal)). Rayonnement (Stefan-Boltzmann) : Q\_flow \= Gr (T\_a^4 - T\_b^4).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Thermique (acausal)], 
  [Type], [#raw("BodyRadiation");], 
  [Libelle], [BodyRadiation], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_thermal/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('BodyRadiation', 'Thermal', 'thermal', 'physicalIsland', ...
    'radiation', {{'a', 'a'}, {'b', 'b'}}, {{'Gr', 'Gr', 1, 'W/K4'}}, '', '', ...
    'Radiation (Stefan-Boltzmann): Q_flow = Gr (T_a^4 - T_b^4).');
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
