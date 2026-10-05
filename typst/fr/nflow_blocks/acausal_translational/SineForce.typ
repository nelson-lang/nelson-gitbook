#import "../nelson_help.typ": *

= SineForce <nflow_blocks:acausal_translational.SineForce>


#block-icon(image("SineForce.svg"))

Force sinusoidale sur une bride : F \= Amplitude sin(2 pi Frequency t + Phase).

== Syntaxe

- #raw("Type de bloc : SineForce");

== Argument d'entrée

/ broches physiques: 1 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

== Argument de sortie

/ ports de signal: 0 sortie(s) de signal (lectures de capteur).

== Description

Composant acausal (Translation (acausal)). Force sinusoidale sur une bride : F \= Amplitude sin(2 pi Frequency t + Phase).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Translation (acausal)], 
  [Type], [#raw("SineForce");], 
  [Libelle], [SineForce], 
  [Solveur], [Abaisse vers #raw("mechanicalTranslationalIsland");. Solveur de reference #raw("dae"); (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (#raw("ode1");\/#raw("ode4");\/#raw("ode45");) sont egalement pris en charge (un ilot multicorps articule necessite #raw("dae");).], 
)
  #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/acausal_translational/library.json", title: "Manifest")

 

#source-code("modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m", title: "Catalog")[
``````matlab
  c{end + 1} = entry('SineForce', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force', {{'flange', 'node'}}, ...
    {{'Amplitude', 'Amplitude', 1, 'N'}, {'Frequency', 'Frequency', 1, 'Hz'}, {'Phase', 'Phase', 0, 'rad'}}, ...
    '', '', 'Sine force on a flange: F = Amplitude sin(2 pi Frequency t + Phase).');
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
