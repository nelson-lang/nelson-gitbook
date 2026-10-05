#import "../nelson_help.typ": *

= Force2 <nflow_blocks:acausal_translational.Force2>


#block-icon(image("Force2.svg"))

Force egale et opposee entre deux brides : +F sur a, -F sur b (pilotee par signal).

== Syntaxe

- #raw("Type de bloc : Force2");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non dirigee(s) ; 1 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Force egale et opposee entre deux brides : +F sur a, -F sur b (pilotee par signal).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("Force2");], 
  [Libelle], [Force2], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('Force2', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force2', {{'a', 'a'}, {'b', 'b'}}, {}, 'F', '', ...
    'Equal and opposite force between two flanges: +F on a, -F on b (signal-driven).');
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
