#import "../nelson_help.typ": *

= bitwiseOperator <nflow_blocks:logic.bitwiseOperator>


#block-icon(image("bitwiseOperator.svg"))

AND\/OR\/XOR\/NAND\/NOR\/NOT bit-a-bit de l entree avec un BitMask constant.

== Syntaxe

- #raw("Type de bloc : bitwiseOperator");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

AND\/OR\/XOR\/NAND\/NOR\/NOT bit-a-bit de l entree avec un BitMask constant.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("bitwiseOperator");], 
  [Libelle], [Bitwise Operator], 
)
  #strong[Description];

 Reinterprete l'entree (entiere) comme un entier non signe sur #raw("NumBits"); bits et applique l'#raw("Operation"); bit-a-bit choisie avec le #raw("BitMask"); constant. NOT ignore le masque. Le resultat est re-masque sur #raw("NumBits"); bits et renvoye en double. Element par element.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=90, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("Operation");], [AND], 
  [#raw("BitMask");], [0], 
  [#raw("NumBits");], [32], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [bitwiseOperator], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : x \= (uint)round(u) & fullmask ; out \= op(x, BitMask) & fullmask, avec fullmask \= 2^NumBits - 1. #strong[Equation ou regle];

 #latex("y = (u \\star \\text{BitMask}) \\,\\&\\, (2^{\\text{NumBits}}-1)"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/bitwiseOperator.cpp", title: "Runtime")


== Exemple

ET de 12 (1100) avec le masque 10 (1010) sur 8 bits donne 8 (1000).

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',12)), struct('id','b','type','bitwiseOperator','inputs',1,'outputs',1,'params',struct('Operation','AND','BitMask',10,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','b','fromIndex',0,'toIndex',0), struct('from','b','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.bitSet>)[bitSet];, #nlink(<nflow_blocks:logic.bitClear>)[bitClear];, #nlink(<nflow_blocks:logic.extractBits>)[extractBits];, #nlink(<nflow_blocks:logic.shiftArithmetic>)[shiftArithmetic];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
