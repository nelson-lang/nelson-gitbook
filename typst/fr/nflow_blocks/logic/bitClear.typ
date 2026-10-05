#import "../nelson_help.typ": *

= bitClear <nflow_blocks:logic.bitClear>


#block-icon(image("bitClear.svg"))

Met a 0 le bit a la position BitIndex de l entree entiere.

== Syntaxe

- #raw("Type de bloc : bitClear");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Met a 0 le bit a la position BitIndex de l entree entiere.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("bitClear");], 
  [Libelle], [Bit Clear], 
)
  #strong[Description];

 Met a 0 un bit unique (index #raw("BitIndex");, base 0) de l'entree entiere via un ET avec le complement d'un masque a un bit. Les valeurs sont reinterpretees comme entiers non signes sur #raw("NumBits"); bits. Element par element.

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
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("BitIndex");], [0], 
  [#raw("NumBits");], [32], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [bitClear], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= (x & \~(1 \<\< BitIndex)) & fullmask. #strong[Equation ou regle];

 #latex("y = u \\,\\&\\, \\overline{2^{\\text{BitIndex}}}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/bitClear.cpp", title: "Runtime")


== Exemple

Effacer le bit 3 de 8 (1000) donne 0.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',8)), struct('id','b','type','bitClear','inputs',1,'outputs',1,'params',struct('BitIndex',3,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','b','fromIndex',0,'toIndex',0), struct('from','b','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.bitSet>)[bitSet];, #nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
