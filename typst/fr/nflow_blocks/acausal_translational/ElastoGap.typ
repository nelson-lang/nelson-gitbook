#import "../nelson_help.typ": *

= ElastoGap <nflow_blocks:acausal_translational.ElastoGap>


#block-icon(image("ElastoGap.svg"))

Ressort-amortisseur de contact unilateral : agit uniquement lorsque le jeu est ferme (s\_rel \< s\_rel0).

== Syntaxe

- #raw("Type de bloc : ElastoGap");

== Argument d'entrée

/ broches physiques: 2 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Ressort-amortisseur de contact unilateral : agit uniquement lorsque le jeu est ferme (s\_rel \< s\_rel0).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("ElastoGap");], 
  [Libelle], [ElastoGap], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('ElastoGap', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'elastoGap', {{'a', 'a'}, {'b', 'b'}}, ...
    {{'c', 'c', 100, 'N/m'}, {'d', 'd', 1, 'N.s/m'}, {'s_rel0', 's_rel0', 0, 'm'}}, '', '', ...
    'One-sided contact spring-damper: acts only while the gap is closed (s_rel < s_rel0).');
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
