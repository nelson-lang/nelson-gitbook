#import "../nelson_help.typ": *

= Gyrator <nflow_blocks:acausal_electrical.Gyrator>


#block-icon(image("Gyrator.svg"))

Gyrateur : i1 \= G2 v2, i2 \= -G1 v1 (transducteur across\<-\>through).

== Syntaxe

- #raw("Type de bloc : Gyrator");

== Argument d'entrée

/ broches physiques: 4 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Gyrateur : i1 \= G2 v2, i2 \= -G1 v1 (transducteur across\<-\>through).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("Gyrator");], 
  [Libelle], [Gyrator], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Gyrator', 'Electrical', 'electrical', 'physicalIsland', ...
    'gyrator', {{'p1', 'a'}, {'n1', 'b'}, {'p2', 'c'}, {'n2', 'd'}}, ...
    {{'G1', 'G1', 1, 'S'}, {'G2', 'G2', 1, 'S'}}, '', '', ...
    'Gyrator: i1 = G2 v2, i2 = -G1 v1 (across<->through transducer).');
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
