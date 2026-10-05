#import "../nelson_help.typ": *

= NMOS <nflow_blocks:acausal_electrical.NMOS>


#block-icon(image("NMOS.svg"))

MOSFET a canal N (loi quadratique) : broches de drain, de grille et de source.

== Syntaxe

- #raw("Type de bloc : NMOS");

== Argument d'entrée

/ broches physiques: 3 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). MOSFET a canal N (loi quadratique) : broches de drain, de grille et de source.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("NMOS");], 
  [Libelle], [NMOS], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('NMOS', 'Electrical', 'electrical', 'physicalIsland', ...
    'nmos', {{'D', 'a'}, {'G', 'c'}, {'S', 'b'}}, ...
    {{'Beta', 'Beta', 1e-3, 'A/V^2'}, {'Vt', 'Vt', 1, 'V'}}, '', '', ...
    'N-channel MOSFET (square law): drain, gate and source pins.');
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
