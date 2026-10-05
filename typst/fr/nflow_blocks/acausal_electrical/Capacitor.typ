#import "../nelson_help.typ": *

= Capacitor <nflow_blocks:acausal_electrical.Capacitor>


#block-icon(image("Capacitor.svg"))

Condensateur lineaire ideal : i \= C dv\/dt.

== Syntaxe

- #raw("Type de bloc : Capacitor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Condensateur lineaire ideal : i \= C dv\/dt.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("Capacitor");], 
  [Libelle], [Capacitor], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Capacitor', 'Electrical', 'electrical', 'physicalIsland', ...
    'capacitor', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'C', 'C', 1e-6, 'F'}, {'v0', 'ic', 0, 'V'}}, '', '', ...
    'Ideal linear capacitor: i = C dv/dt.');
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
