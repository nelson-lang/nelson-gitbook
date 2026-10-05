#import "../nelson_help.typ": *

= TrapezoidVoltage <nflow_blocks:acausal_electrical.TrapezoidVoltage>


#block-icon(image("TrapezoidVoltage.svg"))

Source de tension trapezoidale (montee \/ maintien \/ descente continus).

== Syntaxe

- #raw("Type de bloc : TrapezoidVoltage");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) signal.

== Argument de sortie

/ ports signal: 0 sortie(s) signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Source de tension trapezoidale (montee \/ maintien \/ descente continus).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("TrapezoidVoltage");], 
  [Libelle], [TrapezoidVoltage], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('TrapezoidVoltage', 'Electrical', 'electrical', 'physicalIsland', ...
    'vsource', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Amplitude', 'Amplitude', 1, 'V'}, {'Rising', 'Rising', 0.2, 's'}, {'Width', 'Width', 0.3, 's'}, ...
     {'Falling', 'Falling', 0.2, 's'}, {'Period', 'Period', 1, 's'}}, ...
    '', '', 'Trapezoidal voltage source (continuous ramp-up / hold / ramp-down).');
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
