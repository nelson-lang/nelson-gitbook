#import "../nelson_help.typ": *

= hpf <nflow_blocks:continuous.hpf>


#block-icon(image("hpf.svg"))

Applique un filtre passe-haut du premier ordre.

== Syntaxe

- #raw("Block type: hpf");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Applique un filtre passe-haut du premier ordre.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs continus], 
  [Type], [#raw("hpf");], 
  [Libelle], [HPF], 
)
  #strong[Description];

 Applique un filtre passe-haut du premier ordre.

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
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("cutoff");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("cutoff"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [hpf], 
  [Famille], [Blocs continus], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface la sortie memorisee et l entree brute precedente.
- OUTPUT emet la sortie memorisee. UPDATE applique la mise a jour passe-haut discrete.
- Si cutoff n est pas positif, la sortie est forcee a 0. #strong[Equation ou regle];

 #latex("y_k = \\alpha\\,(y_{k-1} + u_k - u_{k-1})"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/hpf.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.lpf>)[lpf];, #nlink(<nflow_blocks:continuous.derivative>)[derivative];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
