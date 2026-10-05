#import "../nelson_help.typ": *

= zoh <nflow_blocks:discrete.zoh>


#block-icon(image("zoh.svg"))

Echantillonne une entree et conserve la derniere valeur.

== Syntaxe

- #raw("Block type: zoh");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Echantillonne une entree et conserve la derniere valeur.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs discrets], 
  [Type], [#raw("zoh");], 
  [Libelle], [ZOH], 
)
  #strong[Description];

 Echantillonne une entree et conserve la derniere valeur.

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
  [#raw("ts");], [0.1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("ts"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [zoh], 
  [Famille], [Blocs discrets], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface la sortie memorisee et planifie l echantillonnage.
- OUTPUT emet la sortie memorisee. UPDATE echantillonne lorsque t atteint le prochain instant.
- ts est contraint a au moins 0.001. #strong[Equation ou regle];

 #latex("y(t) = u(t_k),\\quad t_k \\le t"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/zoh.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:discrete.foh>)[foh];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:discrete.ddelay>)[ddelay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
