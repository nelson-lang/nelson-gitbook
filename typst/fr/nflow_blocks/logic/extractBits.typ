#import "../nelson_help.typ": *

= extractBits <nflow_blocks:logic.extractBits>


#block-icon(image("extractBits.svg"))

Extrait NumBitsToExtract bits a partir de StartBit, alignes a droite.

== Syntaxe

- #raw("Type de bloc : extractBits");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Extrait NumBitsToExtract bits a partir de StartBit, alignes a droite.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("extractBits");], 
  [Libelle], [Extract Bits], 
)
  #strong[Description];

 Extrait un champ contigu de #raw("NumBitsToExtract"); bits a partir du bit #raw("StartBit"); (base 0, LSB) de l'entree entiere et l'aligne a droite dans la sortie. Les valeurs sont reinterpretees comme entiers non signes sur #raw("NumBits"); bits. Element par element.

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
  [#raw("StartBit");], [0], 
  [#raw("NumBitsToExtract");], [8], 
  [#raw("NumBits");], [32], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [extractBits], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= (x \>\> StartBit) & ((1 \<\< NumBitsToExtract) - 1). #strong[Equation ou regle];

 #latex("y = (u \\gg \\text{StartBit}) \\,\\&\\, (2^{\\text{NumBitsToExtract}}-1)"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/extractBits.cpp", title: "Runtime")


== Exemple

Extraire le quartet haut de 180 (10110100) a partir du bit 4 : 1011 \= 11.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',180)), struct('id','e','type','extractBits','inputs',1,'outputs',1,'params',struct('StartBit',4,'NumBitsToExtract',4,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','e','fromIndex',0,'toIndex',0), struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];, #nlink(<nflow_blocks:logic.shiftArithmetic>)[shiftArithmetic];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
