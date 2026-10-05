#import "../nelson_help.typ": *

= ZDiode <nflow_blocks:acausal_electrical.ZDiode>


#block-icon(image("ZDiode.svg"))

Diode Zener : conduction directe de Shockley plus claquage inverse a -Vz.

== Syntaxe

- #raw("Type de bloc : ZDiode");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) signal.

== Argument de sortie

/ ports signal: 0 sortie(s) signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Diode Zener : conduction directe de Shockley plus claquage inverse a -Vz.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("ZDiode");], 
  [Libelle], [ZDiode], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ZDiode', 'Electrical', 'electrical', 'physicalIsland', ...
    'zdiode', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Is', 'Is', 1e-9, 'A'}, {'Vt', 'Vt', 0.04, 'V'}, {'Vz', 'Vz', 5, 'V'}}, '', '', ...
    'Zener diode: forward Shockley conduction plus reverse breakdown at -Vz.');
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
