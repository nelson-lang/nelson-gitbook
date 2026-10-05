#import "../nelson_help.typ": *

= PlanarBody <nflow_blocks:acausal_planar.PlanarBody>


#block-icon(image("PlanarBody.svg"))

Corps rigide : masse m, inertie centrale I ; six etats (xc, yc, phi, vx, vy, w). Les reperes nommes sont des decalages fixes au corps par rapport au centre de masse.

== Syntaxe

- #raw("Type de bloc : PlanarBody");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Corps rigide : masse m, inertie centrale I ; six etats (xc, yc, phi, vx, vy, w). Les reperes nommes sont des decalages fixes au corps par rapport au centre de masse.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarBody");], 
  [Libelle], [PlanarBody], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarBody', 'Parts', {'com', '<named frames>'}, ...
    {{'m', 1, 'kg'}, {'I', 1, 'kg.m2'}, {'x0', 0, 'm'}, {'y0', 0, 'm'}, ...
     {'phi0', 0, 'rad'}, {'vx0', 0, 'm/s'}, {'vy0', 0, 'm/s'}, {'w0', 0, 'rad/s'}}, '', ...
    'Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.');
``````
]

== Voir aussi

#nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld];, #nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed];, #nlink(<nflow_blocks:acausal_planar.PlanarPointMass>)[PlanarPointMass];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
