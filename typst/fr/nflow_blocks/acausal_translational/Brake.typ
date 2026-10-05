#import "../nelson_help.typ": *

= Brake <nflow_blocks:acausal_translational.Brake>


#block-icon(image("Brake.svg"))

Frein a friction actionne par signal vers la masse : l entree fixe la force de freinage maximale.

== Syntaxe

- #raw("Type de bloc : Brake");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non dirigee(s) ; 1 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Frein a friction actionne par signal vers la masse : l entree fixe la force de freinage maximale.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("Brake");], 
  [Libelle], [Brake], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Brake', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'brake', {{'flange', 'node'}}, {{'vEps', 'vEps', 0.001, 'm/s'}}, 'f', '', ...
    'Signal-actuated friction brake to ground: the input sets the peak braking force.');
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
