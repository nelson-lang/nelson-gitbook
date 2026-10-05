#import "../nelson_help.typ": *

= PlanarSpring <nflow_blocks:acausal_planar.PlanarSpring>


#block-icon(image("PlanarSpring.svg"))

Ressort lineaire 2D entre les points aux reperes a et b : F \= -c dr.

== Syntaxe

- #raw("Type de bloc : PlanarSpring");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Ressort lineaire 2D entre les points aux reperes a et b : F \= -c dr.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarSpring");], 
  [Libelle], [PlanarSpring], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarSpring', 'Forces', {'a', 'b'}, ...
    {{'c', 100, 'N/m'}}, '', ...
    'Linear 2D spring between the points at frames a and b: F = -c dr.');
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
