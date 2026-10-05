#import "../nelson_help.typ": *

= counterLimited <nflow_blocks:source.counterLimited>


#block-icon(image("counterLimited.svg"))

Compteur incremental qui revient a 0 des qu il atteint UpperLimit.

== Syntaxe

- #raw("Type de bloc : counterLimited");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Compteur incremental qui revient a 0 des qu il atteint UpperLimit.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Source], 
  [Type], [#raw("counterLimited");], 
  [Libelle], [Counter Limited], 
)
  #strong[Description];

 Un compteur incremental sans entree qui se replie a un plafond configurable. Demarre a 0 et s'incremente de 1 a chaque pas ; une fois #raw("UpperLimit"); atteint, il revient a 0 au pas suivant, donc la sortie balaie 0, 1, ..., UpperLimit, 0, ...

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
  [#raw("UpperLimit");], [7], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [counterLimited], 
  [Famille], [Source], 
  [Taille rendue], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Etat interne ou historique], [oui], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= count. UPDATE : count \= (count \>\= UpperLimit) ? 0 : count + 1. #strong[Equation ou regle];

 #latex("y_k = k \\bmod (\\text{UpperLimit}+1)"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/counterLimited.cpp", title: "Runtime")


== Exemple

Un compteur limite a 3 parcourt 0,1,2,3,0,1,...

``````matlab
d.blocks={ struct('id','c','type','counterLimited','inputs',0,'outputs',1,'params',struct('UpperLimit',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:source.counterFreeRunning>)[counterFreeRunning];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
