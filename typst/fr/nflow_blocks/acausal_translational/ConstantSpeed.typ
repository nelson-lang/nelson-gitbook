#import "../nelson_help.typ": *

= ConstantSpeed <nflow_blocks:acausal_translational.ConstantSpeed>


#block-icon(image("ConstantSpeed.svg"))

Mouvement impose : la bride se deplace a une vitesse constante v.

== Syntaxe

- #raw("Type de bloc : ConstantSpeed");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Mouvement impose : la bride se deplace a une vitesse constante v.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("ConstantSpeed");], 
  [Libelle], [ConstantSpeed], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ConstantSpeed', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'prescribedSpeed', {{'flange', 'node'}}, {{'v', 'v', 1, 'm/s'}, {'s0', 's0', 0, 'm'}}, '', '', ...
    'Prescribed motion: the flange moves at a constant velocity v.');
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
