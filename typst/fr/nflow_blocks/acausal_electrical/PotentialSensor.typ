#import "../nelson_help.typ": *

= PotentialSensor <nflow_blocks:acausal_electrical.PotentialSensor>


#block-icon(image("PotentialSensor.svg"))

Mesure le potentiel absolu du noeud.

== Syntaxe

- #raw("Type de bloc : PotentialSensor");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) signal.

== Argument de sortie

/ ports signal: 1 sortie(s) signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Mesure le potentiel absolu du noeud.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("PotentialSensor");], 
  [Libelle], [PotentialSensor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('PotentialSensor', 'Electrical', 'electrical', 'physicalIsland', ...
    'potentialSensor', {{'p', 'a'}}, {}, '', 'potential', ...
    'Measures the absolute node potential.');
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
