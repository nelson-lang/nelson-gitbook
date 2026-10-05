#import "../nelson_help.typ": *

= unitDelay <nflow_blocks:discrete.unitDelay>


#block-icon(image("unitDelay.svg"))

Retarde l entree d une mise a jour.

== Syntaxe

- #raw("Block type: unitDelay");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Retarde l entree d une mise a jour.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs discrets], 
  [Type], [#raw("unitDelay");], 
  [Libelle], [Unit Delay], 
)
  #strong[Description];

 Retarde l entree d une mise a jour.

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
  [#raw("initial");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("initial"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [unitDelay], 
  [Famille], [Blocs discrets], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT stocke initial.
- OUTPUT emet la valeur memorisee. UPDATE stocke l entree courante pour la prochaine phase OUTPUT. #strong[Equation ou regle];

 #latex("y_k = u_{k-1}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/unitDelay.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:discrete.ddelay>)[ddelay];, #nlink(<nflow_blocks:discrete.difference>)[difference];, #nlink(<nflow_blocks:discrete.zoh>)[zoh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
