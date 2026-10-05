#import "../nelson_help.typ": *

= integrator <nflow_blocks:continuous.integrator>


#block-icon(image("integrator.svg"))

Integre l entree dans le temps avec bornes optionnelles.

== Syntaxe

- #raw("Block type: integrator");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Integre l entree dans le temps avec bornes optionnelles.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs continus], 
  [Type], [#raw("integrator");], 
  [Libelle], [Integrator], 
)
  #strong[Description];

 Integre l entree dans le temps avec bornes optionnelles.

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
  [#raw("min");], [-inf], 
  [#raw("max");], [inf], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("initial");
- #raw("min");
- #raw("max"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [integrator], 
  [Famille], [Blocs continus], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT borne initial entre min et max.
- OUTPUT emet l etat courant. UPDATE ajoute dt \* entree et borne le resultat.
- Les valeurs natives par defaut pour min et max sont moins et plus l infini. #strong[Equation ou regle];

 #latex("x_{k+1} = \\operatorname{clamp}(x_k + dt\\,u_k,\\,min,\\,max),\\quad y = x"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/integrator.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.derivative>)[derivative];, #nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace];, #nlink(<nflow_blocks:continuous.tf>)[tf];, #nlink(<nflow_blocks:continuous.pid>)[pid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
