#import "../nelson_help.typ": *

= detectChange <nflow_blocks:discrete.detectChange>


#block-icon(image("detectChange.svg"))

Sort 1 a tout pas ou l entree differe du pas precedent.

== Syntaxe

- #raw("Type de bloc : detectChange");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort 1 a tout pas ou l entree differe du pas precedent.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Discret], 
  [Type], [#raw("detectChange");], 
  [Libelle], [Detect Change], 
)
  #strong[Description];

 Sort 1 a tout pas dont l'entree differe de sa valeur au pas precedent, sinon 0. #raw("InitialCondition"); initialise la valeur "avant" le premier pas. Avec etat (l'entree precedente est memorisee) ; element par element sur une entree vectorielle.

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
  [#raw("InitialCondition");], [0], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [detectChange], 
  [Famille], [Discret], 
  [Taille rendue], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Etat interne ou historique], [oui], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= (u !\= prev) ? 1 : 0. UPDATE : prev \= u. #strong[Equation ou regle];

 #latex("y_k = [\\,u_k \\neq u_{k-1}\\,]"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/detectChange.cpp", title: "Runtime")


== Exemple

Detecter qu'une rampe change a chaque pas (1 apres le premier echantillon).

``````matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','dc','type','detectChange','inputs',1,'outputs',1,'params',struct('InitialCondition',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','dc','fromIndex',0,'toIndex',0), struct('from','dc','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:discrete.detectIncrease>)[detectIncrease];, #nlink(<nflow_blocks:discrete.detectDecrease>)[detectDecrease];, #nlink(<nflow_blocks:discrete.risingEdge>)[risingEdge];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
