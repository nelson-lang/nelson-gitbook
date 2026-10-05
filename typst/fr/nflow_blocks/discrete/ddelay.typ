#import "../nelson_help.typ": *

= ddelay <nflow_blocks:discrete.ddelay>


#block-icon(image("ddelay.svg"))

Retarde un signal echantillonne d un nombre entier de pas.

== Syntaxe

- #raw("Block type: ddelay");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Retarde un signal echantillonne d un nombre entier de pas.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs discrets], 
  [Type], [#raw("ddelay");], 
  [Libelle], [Discrete Delay], 
)
  #strong[Description];

 Retarde un signal echantillonne d un nombre entier de pas.

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
  [#raw("steps");], [1], 
  [#raw("ts");], [0.1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("steps");
- #raw("ts"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [ddelay], 
  [Famille], [Blocs discrets], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT alloue une file de taille issue de steps.
- OUTPUT emet la valeur la plus ancienne. UPDATE echantillonne a ts et avance la file.
- steps vaut au moins 1 et ts au moins 0.001. #strong[Equation ou regle];

 #latex("y_k = u_{k-steps}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/ddelay.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.delay>)[delay];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:discrete.zoh>)[zoh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
