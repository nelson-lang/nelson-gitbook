#import "../nelson_help.typ": *

= backlash <nflow_blocks:nonlinear.backlash>


#block-icon(image("backlash.svg"))

Modele un jeu avec une bande morte autour de la sortie precedente.

== Syntaxe

- #raw("Block type: backlash");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Modele un jeu avec une bande morte autour de la sortie precedente.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs non lineaires], 
  [Type], [#raw("backlash");], 
  [Libelle], [Backlash], 
)
  #strong[Description];

 Modele un jeu avec une bande morte autour de la sortie precedente.

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
  [#raw("width");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("width"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [backlash], 
  [Famille], [Blocs non lineaires], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface la sortie memorisee.
- OUTPUT emet la valeur memorisee. UPDATE ne bouge que lorsque l entree sort de width \/ 2 autour de la valeur stockee.
- width est contraint a une valeur positive ou nulle. #strong[Equation ou regle];

 y follows u outside the +\/- width\/2 band

 #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/backlash.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];, #nlink(<nflow_blocks:nonlinear.saturation>)[saturation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
