#import "../nelson_help.typ": *

= NPN <nflow_blocks:acausal_electrical.NPN>


#block-icon(image("NPN.svg"))

Transistor bipolaire NPN (Ebers-Moll) : broches de collecteur, de base et d emetteur.

== Syntaxe

- #raw("Type de bloc : NPN");

== Argument d'entrée

/ broches physiques: 3 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Transistor bipolaire NPN (Ebers-Moll) : broches de collecteur, de base et d emetteur.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("NPN");], 
  [Libelle], [NPN], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('NPN', 'Electrical', 'electrical', 'physicalIsland', ...
    'npn', {{'C', 'a'}, {'B', 'c'}, {'E', 'b'}}, ...
    {{'Is', 'Is', 1e-16, 'A'}, {'Vt', 'Vt', 0.025, 'V'}, ...
     {'Bf', 'Bf', 100, '1'}, {'Br', 'Br', 1, '1'}}, '', '', ...
    'NPN bipolar transistor (Ebers-Moll): collector, base and emitter pins.');
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
