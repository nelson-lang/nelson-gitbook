#import "../nelson_help.typ": *

= Ground <nflow_blocks:acausal_electrical.Ground>


#block-icon(image("Ground.svg"))

Noeud de reference (0 V) pour un ilot electrique.

== Syntaxe

- #raw("Type de bloc : Ground");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Noeud de reference (0 V) pour un ilot electrique.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("Ground");], 
  [Libelle], [Ground], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Ground', 'Electrical', 'electrical', 'physicalIsland', ...
    'ground', {{'p', 'a'}}, {}, '', '', ...
    'Reference node (0 V) for an electrical island.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor];, #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor];, #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
