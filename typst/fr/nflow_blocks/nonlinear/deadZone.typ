#import "../nelson_help.typ": *

= deadZone <nflow_blocks:nonlinear.deadZone>


#block-icon(image("deadZone.svg"))

Supprime les valeurs dans une zone morte.

== Syntaxe

- #raw("Block type: deadZone");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Supprime les valeurs dans une zone morte.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs non lineaires], 
  [Type], [#raw("deadZone");], 
  [Libelle], [Dead Zone], 
)
  #strong[Description];

 Supprime les valeurs dans une zone morte.

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
  [Type de bloc], [deadZone], 
  [Famille], [Blocs non lineaires], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. Le premier port d entree est requis.
- Les entrees sous min produisent u - min, celles au-dessus de max produisent u - max, et les valeurs dans la bande produisent 0. #strong[Equation ou regle];

 #latex("y = 0\\quad \\mathrm{for}\\quad min \\le u \\le max"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/deadZone.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.backlash>)[backlash];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
