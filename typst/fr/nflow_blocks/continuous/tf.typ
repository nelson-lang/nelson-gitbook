#import "../nelson_help.typ": *

= tf <nflow_blocks:continuous.tf>


#block-icon(image("tf.svg"))

Implemente une approximation de fonction de transfert continue.

== Syntaxe

- #raw("Block type: tf");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Implemente une approximation de fonction de transfert continue.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs continus], 
  [Type], [#raw("tf");], 
  [Libelle], [Transfer Fn], 
)
  #strong[Description];

 Implemente une approximation de fonction de transfert continue.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=85, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("num");], [\[3\]], 
  [#raw("den");], [\[1, 3\]], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("num");
- #raw("den"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [tf], 
  [Famille], [Blocs continus], 
  [Taille graphique], [85 x 80], 
  [Phases], [INIT, OUTPUT, ALGEBRAIC, UPDATE], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT normalise les coefficients et efface les historiques.
- OUTPUT emet la sortie directe\/memorisee; ALGEBRAIC est present pour la resolution avec transmission directe.
- UPDATE avance les historiques internes avec l entree et dt. #strong[Equation ou regle];

 #latex("y \\approx \\frac{num(s)}{den(s)}\\,u"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/tf.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace];, #nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:discrete.dtf>)[dtf];, #nlink(<nflow_blocks:continuous.lpf>)[lpf];, #nlink(<nflow_blocks:continuous.hpf>)[hpf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
