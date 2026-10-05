#import "../nelson_help.typ": *

= quantizer <nflow_blocks:nonlinear.quantizer>


#block-icon(image("quantizer.svg"))

Arrondit l entree au plus proche intervalle.

== Syntaxe

- #raw("Block type: quantizer");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Arrondit l entree au plus proche intervalle.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs non lineaires], 
  [Type], [#raw("quantizer");], 
  [Libelle], [Quantizer], 
)
  #strong[Description];

 Arrondit l entree au plus proche intervalle.

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
  [#raw("interval");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("interval"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [quantizer], 
  [Famille], [Blocs non lineaires], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. L entree 1 est requise.
- interval est converti en abs(interval); les valeurs sous 1e-12 sont remplacees par 1. #strong[Equation ou regle];

 #latex("y = interval\\,\\operatorname{round}\\left(\\frac{u}{interval}\\right)"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/quantizer.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:nonlinear.rate>)[rate];, #nlink(<nflow_blocks:nonlinear.saturation>)[saturation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
