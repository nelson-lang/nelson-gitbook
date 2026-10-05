#import "../nelson_help.typ": *

= LinearSpeedDependentForce <nflow_blocks:acausal_translational.LinearSpeedDependentForce>


#block-icon(image("LinearSpeedDependentForce.svg"))

Resistance proportionnelle a la vitesse vers la masse : F \= -d v.

== Syntaxe

- #raw("Type de bloc : LinearSpeedDependentForce");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Resistance proportionnelle a la vitesse vers la masse : F \= -d v.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("LinearSpeedDependentForce");], 
  [Libelle], [LinearSpeedDependentForce], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('LinearSpeedDependentForce', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'linearSpeedForce', {{'flange', 'node'}}, {{'d', 'd', 1, 'N.s/m'}}, '', '', ...
    'Speed-proportional resistance to ground: F = -d v.');
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
