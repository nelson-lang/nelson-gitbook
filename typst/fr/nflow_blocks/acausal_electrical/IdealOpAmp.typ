#import "../nelson_help.typ": *

= IdealOpAmp <nflow_blocks:acausal_electrical.IdealOpAmp>


#block-icon(image("IdealOpAmp.svg"))

Amplificateur operationnel ideal (nullor) : court-circuit virtuel e\_+ \= e\_-, courant de sortie libre.

== Syntaxe

- #raw("Type de bloc : IdealOpAmp");

== Argument d'entrée

/ broches physiques: 3 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Amplificateur operationnel ideal (nullor) : court-circuit virtuel e\_+ \= e\_-, courant de sortie libre.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("IdealOpAmp");], 
  [Libelle], [IdealOpAmp], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('IdealOpAmp', 'Electrical', 'electrical', 'physicalIsland', ...
    'opAmp', {{'in_p', 'a'}, {'in_n', 'b'}, {'out', 'c'}}, {}, '', '', ...
    'Ideal op-amp (nullor): virtual short e_+ = e_-, output current free.');
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
