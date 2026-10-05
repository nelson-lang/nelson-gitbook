#import "../nelson_help.typ": *

= IdealDiode <nflow_blocks:acausal_electrical.IdealDiode>


#block-icon(image("IdealDiode.svg"))

Diode ideale commutant a la tension de coude Vknee : bloquee en dessous (conductance de fuite Goff), passante au-dessus (resistance Ron en serie avec Vknee) ; le changement de mode est un evenement.

== Syntaxe

- #raw("Type de bloc : IdealDiode");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Electrique (acausal)). Diode ideale commutant a la tension de coude Vknee : bloquee en dessous (conductance de fuite Goff), passante au-dessus (resistance Ron en serie avec Vknee) ; le changement de mode est un evenement.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Electrique (acausal)], 
  [Type], [#raw("IdealDiode");], 
  [Libelle], [IdealDiode], 
  [Solveur], [Abaisse vers #raw("physicalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_electrical/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('IdealDiode', 'Electrical', 'electrical', 'physicalIsland', ...
    'idealDiode', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Ron', 'Ron', 1e-3, 'ohm'}, {'Goff', 'Goff', 1e-6, 'S'}, {'Vknee', 'Vknee', 0, 'V'}}, '', '', ...
    'Ideal diode switching at the knee voltage Vknee: off below it (leak conductance Goff), on above it (on-resistance Ron in series with Vknee); the mode flip is an event.');
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
