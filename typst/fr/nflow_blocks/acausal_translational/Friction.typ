#import "../nelson_help.typ": *

= Friction <nflow_blocks:acausal_translational.Friction>


#block-icon(image("Friction.svg"))

Frottement de Coulomb regularise (sans evenement) : F \= -Fc tanh(v \/ vEps).

== Syntaxe

- #raw("Type de bloc : Friction");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Frottement de Coulomb regularise (sans evenement) : F \= -Fc tanh(v \/ vEps).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("Friction");], 
  [Libelle], [Friction], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Friction', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'friction', {{'flange', 'node'}}, {{'Fc', 'Fc', 1, 'N'}, {'vEps', 'vEps', 0.001, 'm/s'}}, '', '', ...
    'Regularised Coulomb friction (event-free): F = -Fc tanh(v / vEps).');
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
