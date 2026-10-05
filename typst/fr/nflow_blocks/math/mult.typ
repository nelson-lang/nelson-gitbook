#import "../nelson_help.typ": *

= mult <nflow_blocks:math.mult>


#block-icon(image("mult.svg"))

Multiplie les entrees connectees.

== Syntaxe

- #raw("Block type: mult");

== Argument d'entrée

/ input ports: 3 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Multiplie les entrees connectees.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs mathematiques], 
  [Type], [#raw("mult");], 
  [Libelle], [Mult], 
)
  #strong[Description];

 Multiplie les entrees connectees.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=-30, y\=10], 
  [Port\_2], [Signal numerique lu par le bloc.], [top], [x\=10, y\=-30], 
  [Port\_3], [Signal numerique lu par le bloc.], [bottom], [x\=10, y\=50], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=50, y\=10], 
)
 #strong[Parametres];

 Aucun parametre de bloc n est declare dans le manifest.

 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [mult], 
  [Famille], [Blocs mathematiques], 
  [Taille graphique], [20 x 20], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique.
- Commence a 1 et multiplie chaque entree connectee; les ports deconnectes sont ignores. #strong[Equation ou regle];

 #latex("y = \\prod_i u_i"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/mult.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.divide>)[divide];, #nlink(<nflow_blocks:math.gain>)[gain];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
