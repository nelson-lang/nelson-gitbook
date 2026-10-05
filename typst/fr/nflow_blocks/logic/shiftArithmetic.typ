#import "../nelson_help.typ": *

= shiftArithmetic <nflow_blocks:logic.shiftArithmetic>


#block-icon(image("shiftArithmetic.svg"))

Decalage arithmetique de bits a gauche\/droite de ShiftNumber (64 bits signes).

== Syntaxe

- #raw("Type de bloc : shiftArithmetic");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Decalage arithmetique de bits a gauche\/droite de ShiftNumber (64 bits signes).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("shiftArithmetic");], 
  [Libelle], [Shift Arithmetic], 
)
  #strong[Description];

 Decalage arithmetique de bits de l'entree entiere. #raw("ShiftDirection"); \= "Left" multiplie par 2^ShiftNumber ; "Right" effectue un decalage arithmetique a droite preservant le signe (division par 2^ShiftNumber, arrondi vers moins l'infini). Les valeurs sont traitees comme entiers signes 64 bits ; le decalage a gauche passe par de l'arithmetique non signee pour rester bien defini. Element par element.

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
  [#raw("ShiftDirection");], [Left], 
  [#raw("ShiftNumber");], [1], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [shiftArithmetic], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : Left -\> out \= x \<\< ShiftNumber ; Right -\> out \= x \>\> ShiftNumber (arithmetique). #strong[Equation ou regle];

 #latex("y = u \\cdot 2^{\\pm \\text{ShiftNumber}}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/shiftArithmetic.cpp", title: "Runtime")


== Exemple

Decaler 5 de 3 bits a gauche donne 40.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',5)), struct('id','s','type','shiftArithmetic','inputs',1,'outputs',1,'params',struct('ShiftDirection','Left','ShiftNumber',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','s','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];, #nlink(<nflow_blocks:logic.extractBits>)[extractBits];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
