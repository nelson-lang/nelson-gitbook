#import "../nelson_help.typ": *

= saturation <nflow_blocks:nonlinear.saturation>


#block-icon(image("saturation.svg"))

Borne l entree entre min et max.

== Syntaxe

- #raw("Block type: saturation");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Borne l entree entre min et max.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs non lineaires], 
  [Type], [#raw("saturation");], 
  [Libelle], [Saturation], 
)
  #strong[Description];

 Borne l entree entre min et max.

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
  [#raw("min");], [-1], 
  [#raw("max");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("min");
- #raw("max"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [saturation], 
  [Famille], [Blocs non lineaires], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. L entree 1 est requise.
- min et max sont resolus numeriquement; les valeurs natives par defaut sont moins et plus l infini. #strong[Equation ou regle];

 #latex("y = \\operatorname{clamp}(u,\\,min,\\,max)"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/saturation.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];, #nlink(<nflow_blocks:nonlinear.rate>)[rate];, #nlink(<nflow_blocks:math.min>)[min];, #nlink(<nflow_blocks:math.max>)[max];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
