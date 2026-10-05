#import "../nelson_help.typ": *

= compareToConstant <nflow_blocks:logic.compareToConstant>


#block-icon(image("compareToConstant.svg"))

Compare une entree a un seuil constant.

== Syntaxe

- #raw("Block type: compareToConstant");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Compare une entree a un seuil constant.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs logiques], 
  [Type], [#raw("compareToConstant");], 
  [Libelle], [Compare Const], 
)
  #strong[Description];

 Compare une entree a un seuil constant.

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
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=100, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("operator");], [ge], 
  [#raw("threshold");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("operator");
- #raw("threshold"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [compareToConstant], 
  [Famille], [Blocs logiques], 
  [Taille graphique], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. Le premier port d entree est requis.
- Les operateurs pris en charge sont ge, gt et ne; les valeurs inconnues reviennent a ge.
- threshold est resolu numeriquement. #strong[Equation ou regle];

 #latex("y = \\operatorname{compare}(u,\\,threshold,\\,operator)"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/compareToConstant.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:logic.compareToZero>)[compareToZero];, #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
