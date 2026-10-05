#import "../nelson_help.typ": *

= fallingEdge <nflow_blocks:discrete.fallingEdge>


#block-icon(image("fallingEdge.svg"))

Sort 1 au pas ou l entree passe de \>\= 0 a \< 0.

== Syntaxe

- #raw("Type de bloc : fallingEdge");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort 1 au pas ou l entree passe de \>\= 0 a \< 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Discret], 
  [Type], [#raw("fallingEdge");], 
  [Libelle], [Falling Edge], 
)
  #strong[Description];

 Detecte un front descendant : sort 1 au pas ou l'entree passe de non negative a strictement negative (#raw("prev >= 0 && u < 0");), sinon 0. #raw("InitialCondition"); initialise la valeur precedente. Avec etat ; element par element.

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
  [Type de bloc], [fallingEdge], 
  [Famille], [Discret], 
  [Taille rendue], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Etat interne ou historique], [oui], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= (prev \>\= 0 && u \< 0) ? 1 : 0. UPDATE : prev \= u. #strong[Equation ou regle];

 #latex("y_k = [\\,u_{k-1} \\ge 0 \\wedge u_k < 0\\,]"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/fallingEdge.cpp", title: "Runtime")


== Exemple

Une rampe descendante amorcee au-dessus de 0 produit un front descendant au passage par zero.

``````matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',-1)), struct('id','ic','type','initialCondition','inputs',1,'outputs',1,'params',struct('InitialValue',1)), struct('id','fe','type','fallingEdge','inputs',1,'outputs',1,'params',struct('InitialCondition',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','ic','fromIndex',0,'toIndex',0), struct('from','ic','to','fe','fromIndex',0,'toIndex',0), struct('from','fe','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:discrete.risingEdge>)[risingEdge];, #nlink(<nflow_blocks:discrete.detectChange>)[detectChange];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
