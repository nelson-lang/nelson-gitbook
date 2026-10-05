#import "../nelson_help.typ": *

= PlanarRollingWheel <nflow_blocks:acausal_planar.PlanarRollingWheel>


#block-icon(image("PlanarRollingWheel.svg"))

La roue au repere a roule sans glisser sur la ligne de surface fixe (px,py)+(dx,dy), en restant a la hauteur radius.

== Syntaxe

- #raw("Type de bloc : PlanarRollingWheel");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). La roue au repere a roule sans glisser sur la ligne de surface fixe (px,py)+(dx,dy), en restant a la hauteur radius.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarRollingWheel");], 
  [Libelle], [PlanarRollingWheel], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarRollingWheel', 'Joints', {'a'}, ...
    {{'dx', 1, '1'}, {'dy', 0, '1'}, {'px', 0, 'm'}, {'py', 0, 'm'}, {'radius', 1, 'm'}}, '', ...
    'Wheel at frame a rolls without slipping on the fixed surface line (px,py)+(dx,dy), staying at height radius.');
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
