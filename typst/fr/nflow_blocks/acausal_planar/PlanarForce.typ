#import "../nelson_help.typ": *

= PlanarForce <nflow_blocks:acausal_planar.PlanarForce>


#block-icon(image("PlanarForce.svg"))

Force externe du monde (fx, fy) appliquee au point du repere a (ajoute un couple lorsqu elle est decalee du centre de masse).

== Syntaxe

- #raw("Type de bloc : PlanarForce");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Force externe du monde (fx, fy) appliquee au point du repere a (ajoute un couple lorsqu elle est decalee du centre de masse).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarForce");], 
  [Libelle], [PlanarForce], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarForce', 'Forces', {'a'}, ...
    {{'fx', 0, 'N'}, {'fy', 0, 'N'}}, '', ...
    'External world force (fx, fy) applied at the frame-a point (adds a torque when offset from the COM).');
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
