#import "../nelson_help.typ": *

= PlanarPrismatic <nflow_blocks:acausal_planar.PlanarPrismatic>


#block-icon(image("PlanarPrismatic.svg"))

Liaison prismatique : le repere b glisse selon l axe monde (dx, dy) passant par le repere a, rotation relative bloquee.

== Syntaxe

- #raw("Type de bloc : PlanarPrismatic");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Liaison prismatique : le repere b glisse selon l axe monde (dx, dy) passant par le repere a, rotation relative bloquee.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarPrismatic");], 
  [Libelle], [PlanarPrismatic], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarPrismatic', 'Joints', {'a', 'b'}, ...
    {{'dx', 1, '1'}, {'dy', 0, '1'}}, '', ...
    'Prismatic joint: frame b slides along the world axis (dx, dy) through frame a, relative rotation locked.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld];, #nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed];, #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
