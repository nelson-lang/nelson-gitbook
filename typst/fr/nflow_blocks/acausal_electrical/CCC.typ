#import "../nelson_help.typ": *

= CCC <nflow_blocks:acausal_electrical.CCC>


#block-icon(image("CCC.svg"))

Source de courant commandee en courant : i\_pn \= gain i\_cp (la branche de mesure cp-cn est un court-circuit).

== Syntaxe

- #raw("Type de bloc : CCC");

== Argument d'entrée

/ broches physiques: 4 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Source de courant commandee en courant : i\_pn \= gain i\_cp (la branche de mesure cp-cn est un court-circuit).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("CCC");], 
  [Libelle], [CCC], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('CCC', 'Electrical', 'electrical', 'physicalIsland', ...
    'cccs', {{'p', 'a'}, {'n', 'b'}, {'cp', 'c'}, {'cn', 'd'}}, ...
    {{'gain', 'gain', 1, '1'}}, '', '', ...
    'Current-controlled current source: i_pn = gain i_cp (the sense branch cp-cn is a short).');
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
