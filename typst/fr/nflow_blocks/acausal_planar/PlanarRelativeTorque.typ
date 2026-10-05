#import "../nelson_help.typ": *

= PlanarRelativeTorque <nflow_blocks:acausal_planar.PlanarRelativeTorque>


#block-icon(image("PlanarRelativeTorque.svg"))

Couple d actionneur : +tau sur le corps au repere a, -tau sur le corps au repere b (entraine une liaison).

== Syntaxe

- #raw("Type de bloc : PlanarRelativeTorque");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Planaire (acausal)). Couple d actionneur : +tau sur le corps au repere a, -tau sur le corps au repere b (entraine une liaison).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Planaire (acausal)], 
  [Type], [#raw("PlanarRelativeTorque");], 
  [Libelle], [PlanarRelativeTorque], 
  [Solveur], [Abaisse vers #raw("planarMechanicalIsland");. Solveur de reference #raw("dae"); (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_planar/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = pl_entry('PlanarRelativeTorque', 'Forces', {'a', 'b'}, ...
    {{'tau', 0, 'N.m'}}, '', ...
    'Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).');
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
