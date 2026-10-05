#import "../nelson_help.typ": *

= RampVoltage <nflow_blocks:acausal_electrical.RampVoltage>


#block-icon(image("RampVoltage.svg"))

Source de tension en rampe : v \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.

== Syntaxe

- #raw("Type de bloc : RampVoltage");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) signal.

== Argument de sortie

/ ports signal: 0 sortie(s) signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Source de tension en rampe : v \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("RampVoltage");], 
  [Libelle], [RampVoltage], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RampVoltage', 'Electrical', 'electrical', 'physicalIsland', ...
    'vsource', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Slope', 'slope', 1, 'V/s'}, {'StartTime', 'start', 0, 's'}}, '', '', ...
    'Ramp voltage source: v = Slope (t - StartTime) for t >= StartTime, else 0.');
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
