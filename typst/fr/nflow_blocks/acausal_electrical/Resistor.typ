#import "../nelson_help.typ": *

= Resistor <nflow_blocks:acausal_electrical.Resistor>


#block-icon(image("Resistor.svg"))

Resistance lineaire ideale : i \= (v\_p - v\_n) \/ R.

== Syntaxe

- #raw("Type de bloc : Resistor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) signal.

== Argument de sortie

/ ports signal: 0 sortie(s) signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Resistance lineaire ideale : i \= (v\_p - v\_n) \/ R.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("Resistor");], 
  [Libelle], [Resistor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Resistor', 'Electrical', 'electrical', 'physicalIsland', ...
    'resistor', {{'p', 'a'}, {'n', 'b'}}, {{'R', 'R', 1000, 'ohm'}}, '', '', ...
    'Ideal linear resistor: i = (v_p - v_n) / R.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground];, #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor];, #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
