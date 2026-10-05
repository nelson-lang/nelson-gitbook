#import "../nelson_help.typ": *

= RelSpeedSensor <nflow_blocks:acausal_translational.RelSpeedSensor>


#block-icon(image("RelSpeedSensor.svg"))

Mesure la vitesse relative v\_a - v\_b entre deux brides.

== Syntaxe

- #raw("Type de bloc : RelSpeedSensor");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 1 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Mesure la vitesse relative v\_a - v\_b entre deux brides.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("RelSpeedSensor");], 
  [Libelle], [RelSpeedSensor], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('RelSpeedSensor', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'relSpeedSensor', {{'a', 'a'}, {'b', 'b'}}, {}, '', 'speed', ...
    'Measures the relative velocity v_a - v_b between two flanges.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_translational.TranslationalEMF>)[TranslationalEMF];, #nlink(<nflow_blocks:acausal_translational.Mass>)[Mass];, #nlink(<nflow_blocks:acausal_translational.SlidingMass>)[SlidingMass];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
