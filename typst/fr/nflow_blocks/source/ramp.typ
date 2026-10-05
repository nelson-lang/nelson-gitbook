#import "../nelson_help.typ": *

= ramp <nflow_blocks:source.ramp>


#block-icon(image("ramp.svg"))

Genere une rampe commencant a start.

== Syntaxe

- #raw("Block type: ramp");

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Genere une rampe commencant a start.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs sources], 
  [Type], [#raw("ramp");], 
  [Libelle], [Ramp], 
)
  #strong[Description];

 Genere une rampe commencant a start.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("slope");], [1], 
  [#raw("start");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("slope");
- #raw("start"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [ramp], 
  [Famille], [Blocs sources], 
  [Taille graphique], [80 x 80], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc OUTPUT sans entree.
- Avant start, la sortie vaut 0; a partir de start, elle vaut slope \* (t - start). #strong[Equation ou regle];

 #latex("y = \\begin{cases} slope\\,(t - start), & t \\ge start \\\\ 0, & t < start \\end{cases}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/ramp.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:source.step>)[step];, #nlink(<nflow_blocks:source.sine>)[sine];, #nlink(<nflow_blocks:source.clock>)[clock];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
