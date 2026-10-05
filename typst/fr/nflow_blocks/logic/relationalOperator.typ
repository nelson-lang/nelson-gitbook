#import "../nelson_help.typ": *

= relationalOperator <nflow_blocks:logic.relationalOperator>


#block-icon(image("relationalOperator.svg"))

Compare deux signaux d entree.

== Syntaxe

- #raw("Block type: relationalOperator");

== Argument d'entrée

/ input ports: 2 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Compare deux signaux d entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs logiques], 
  [Type], [#raw("relationalOperator");], 
  [Libelle], [Relational], 
)
  #strong[Description];

 Compare deux signaux d entree.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=30], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=50], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=100, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("operator");], [ge], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("operator"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [relationalOperator], 
  [Famille], [Blocs logiques], 
  [Taille graphique], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. L entree 1 est requise.
- Les operateurs pris en charge sont ge, gt et ne; les valeurs inconnues reviennent a ge.
- L entree 2 vaut 0 par defaut si elle est deconnectee. #strong[Equation ou regle];

 #latex("y = \\operatorname{compare}(u_1,\\,u_2,\\,operator)"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/relationalOperator.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];, #nlink(<nflow_blocks:logic.compareToZero>)[compareToZero];, #nlink(<nflow_blocks:utility.switch>)[switch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
