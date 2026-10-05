#import "../nelson_help.typ": *

= Accelerate <nflow_blocks:acausal_translational.Accelerate>


#block-icon(image("Accelerate.svg"))

Mouvement impose : l acceleration de la bride suit le signal d entree.

== Syntaxe

- #raw("Type de bloc : Accelerate");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non dirigee(s) ; 1 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Mouvement impose : l acceleration de la bride suit le signal d entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("Accelerate");], 
  [Libelle], [Accelerate], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Accelerate', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'accelerate', {{'flange', 'node'}}, {{'s0', 's0', 0, 'm'}, {'v0', 'v0', 0, 'm/s'}}, 'a', '', ...
    'Prescribed motion: the flange acceleration follows the input signal.');
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
