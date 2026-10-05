#import "../nelson_help.typ": *

= IdealTransformer <nflow_blocks:acausal_electrical.IdealTransformer>


#block-icon(image("IdealTransformer.svg"))

Transformateur ideal : v1 \= n v2, i2 \= -n i1 (structurel, sans stockage d etat).

== Syntaxe

- #raw("Type de bloc : IdealTransformer");

== Argument d'entrée

/ broches physiques: 4 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Transformateur ideal : v1 \= n v2, i2 \= -n i1 (structurel, sans stockage d etat).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("IdealTransformer");], 
  [Libelle], [IdealTransformer], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('IdealTransformer', 'Electrical', 'electrical', 'physicalIsland', ...
    'transformer', {{'p1', 'a'}, {'n1', 'b'}, {'p2', 'c'}, {'n2', 'd'}}, ...
    {{'n', 'n', 1, '1'}}, '', '', ...
    'Ideal transformer: v1 = n v2, i2 = -n i1 (structural, no state storage).');
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
