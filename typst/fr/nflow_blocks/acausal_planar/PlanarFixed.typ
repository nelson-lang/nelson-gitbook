#import "../nelson_help.typ": *

= PlanarFixed <nflow_blocks:acausal_planar.PlanarFixed>


#block-icon(image("PlanarFixed.svg"))

Repere rigidement fixe au point monde (x, y).

== Syntaxe

- #raw("Type de bloc : PlanarFixed");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Repere rigidement fixe au point monde (x, y).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarFixed");], 
  [Libelle], [PlanarFixed], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarFixed', 'World', {'frame'}, ...
    {{'x', 0, 'm'}, {'y', 0, 'm'}}, '', ...
    'Frame rigidly fixed at the world point (x, y).');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld];, #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody];, #nlink(<nflow_blocks:acausal_planar.PlanarPointMass>)[PlanarPointMass];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
