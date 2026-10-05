#import "../nelson_help.typ": *

= xor <nflow_blocks:logic.xor>


#block-icon(image("xor.svg"))

Produit le OU exclusif logique de deux entrees.

== Syntaxe

- #raw("Block type: xor");

== Argument d'entrée

/ input ports: 2 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Produit le OU exclusif logique de deux entrees.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs logiques], 
  [Type], [#raw("xor");], 
  [Libelle], [XOR], 
)
  #strong[Description];

 Produit le OU exclusif logique de deux entrees.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=20], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=60], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=80, y\=40], 
)
 #strong[Parametres];

 Aucun parametre de bloc n est declare dans le manifest.

 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [xor], 
  [Famille], [Blocs logiques], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc booleen algebrique.
- La sortie est vraie lorsqu exactement une entree est vraie. #strong[Equation ou regle];

 #latex("y = \\operatorname{xor}(\\operatorname{bool}(u_1),\\operatorname{bool}(u_2))"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/xor.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:logic.and>)[and];, #nlink(<nflow_blocks:logic.or>)[or];, #nlink(<nflow_blocks:logic.not>)[not];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
