#import "../nelson_help.typ": *

= SpringDamper <nflow_blocks:acausal_translational.SpringDamper>


#block-icon(image("SpringDamper.svg"))

Ressort et amortisseur en parallele : F \= k (s\_a - s\_b) + d (v\_a - v\_b).

== Syntaxe

- #raw("Type de bloc : SpringDamper");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Ressort et amortisseur en parallele : F \= k (s\_a - s\_b) + d (v\_a - v\_b).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("SpringDamper");], 
  [Libelle], [SpringDamper], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('SpringDamper', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'spring', {{'a', 'a'}, {'b', 'b'}}, {{'k', 'k', 1, 'N/m'}, {'d', 'd', 1, 'N.s/m'}}, '', '', ...
    'Parallel spring and damper: F = k (s_a - s_b) + d (v_a - v_b).');
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
