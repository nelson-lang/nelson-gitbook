#import "../nelson_help.typ": *

= TranslationalEMF <nflow_blocks:acausal_translational.TranslationalEMF>


#block-icon(image("TranslationalEMF.svg"))

Convertisseur electromecanique lineaire : force contre-electromotrice v \= k v\_flange, force F \= k i.

== Syntaxe

- #raw("Type de bloc : TranslationalEMF");

== Argument d'entrée

/ broches physiques: 3 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Convertisseur electromecanique lineaire : force contre-electromotrice v \= k v\_flange, force F \= k i.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("TranslationalEMF");], 
  [Libelle], [TranslationalEMF], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('TranslationalEMF', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force', {{'p', 'a'}, {'n', 'b'}, {'flange', 'node'}}, {{'k', 'k', 1, 'N/A'}}, '', '', ...
    'Linear electro-mechanical converter: back-emf v = k v_flange, force F = k i.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_translational.Mass>)[Mass];, #nlink(<nflow_blocks:acausal_translational.SlidingMass>)[SlidingMass];, #nlink(<nflow_blocks:acausal_translational.MassWithWeight>)[MassWithWeight];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
