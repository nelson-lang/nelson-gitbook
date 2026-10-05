#import "../nelson_help.typ": *

= counterFreeRunning <nflow_blocks:source.counterFreeRunning>


#block-icon(image("counterFreeRunning.svg"))

Compteur incremental libre, replie modulo 2^NumBits.

== Syntaxe

- #raw("Type de bloc : counterFreeRunning");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Compteur incremental libre, replie modulo 2^NumBits.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Source], 
  [Type], [#raw("counterFreeRunning");], 
  [Libelle], [Counter Free-Running], 
)
  #strong[Description];

 Un compteur incremental libre sans entree. Demarre a 0 et s'incremente de 1 a chaque pas d'echantillonnage, repliant a 0 apres 2^#raw("NumBits"); - 1 (arithmetique modulo non signee). Le compte courant est emis avant l'increment du pas, donc le premier echantillon vaut 0.

 #strong[Ports];

 Ce bloc n'a aucun port d'entree.

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
  [#raw("NumBits");], [16], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [counterFreeRunning], 
  [Famille], [Source], 
  [Taille rendue], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Etat interne ou historique], [oui], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= count. UPDATE : count \= (count + 1) mod 2^NumBits. #strong[Equation ou regle];

 #latex("y_k = k \\bmod 2^{\\text{NumBits}}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/counterFreeRunning.cpp", title: "Runtime")


== Exemple

Un compteur 2 bits parcourt 0,1,2,3,0,1,...

``````matlab
d.blocks={ struct('id','c','type','counterFreeRunning','inputs',0,'outputs',1,'params',struct('NumBits',2)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:source.counterLimited>)[counterLimited];, #nlink(<nflow_blocks:source.repeatingSequenceStair>)[repeatingSequenceStair];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
