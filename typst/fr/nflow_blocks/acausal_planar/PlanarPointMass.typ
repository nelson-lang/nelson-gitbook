#import "../nelson_help.typ": *

= PlanarPointMass <nflow_blocks:acausal_planar.PlanarPointMass>


#block-icon(image("PlanarPointMass.svg"))

Masse ponctuelle (sans orientation) : quatre etats (xc, yc, vx, vy) ; attachez les liaisons a son point.

== Syntaxe

- #raw("Type de bloc : PlanarPointMass");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Masse ponctuelle (sans orientation) : quatre etats (xc, yc, vx, vy) ; attachez les liaisons a son point.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarPointMass");], 
  [Libelle], [PlanarPointMass], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarPointMass', 'Parts', {'com'}, ...
    {{'m', 1, 'kg'}, {'x0', 0, 'm'}, {'y0', 0, 'm'}, {'vx0', 0, 'm/s'}, {'vy0', 0, 'm/s'}}, '', ...
    'Point mass (no orientation): four states (xc, yc, vx, vy); attach joints at its point.');
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
