#import "../nelson_help.typ": *

= logicalOperator <nflow_blocks:logic.logicalOperator>


#block-icon(image("logicalOperator.svg"))

AND\/OR\/NAND\/NOR\/XOR\/XNOR\/NOT logique configurable des entrees.

== Syntaxe

- #raw("Type de bloc : logicalOperator");

== Argument d'entrée

/ ports d entree: 2 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

AND\/OR\/NAND\/NOR\/XOR\/XNOR\/NOT logique configurable des entrees.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("logicalOperator");], 
  [Libelle], [Logical Operator], 
)
  #strong[Description];

 Un bloc logique unique et parametrable : #raw("Operator"); choisit AND, OR, NAND, NOR, XOR, XNOR ou NOT. Il reduit les N entrees element par element (une entree non nulle vaut vrai) ; NOT prend une seule entree et l'inverse. Complete les blocs fixes and \/ or \/ xor \/ not par un bloc configurable.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=26], 
  [Port\_2], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=54], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("Operator");], [AND], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [logicalOperator], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : reduit les N entrees booleennes avec l'operateur choisi ; sortie booleenne (0\/1). #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/logicalOperator.cpp", title: "Runtime")


== Exemple

NON-ET de deux constantes : NAND(1, 1) \= 0.

``````matlab
d.blocks={ struct('id','a','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','b','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','g','type','logicalOperator','inputs',2,'outputs',1,'params',struct('Operator','NAND')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','a','to','g','fromIndex',0,'toIndex',0), struct('from','b','to','g','fromIndex',0,'toIndex',1), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.and>)[and];, #nlink(<nflow_blocks:logic.or>)[or];, #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
