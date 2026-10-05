#import "../nelson_help.typ": *

= initialCondition <nflow_blocks:utility.initialCondition>


#block-icon(image("initialCondition.svg"))

Force la sortie a InitialValue au premier pas, puis transmet l entree.

== Syntaxe

- #raw("Type de bloc : initialCondition");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Force la sortie a InitialValue au premier pas, puis transmet l entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Utilitaires], 
  [Type], [#raw("initialCondition");], 
  [Libelle], [IC], 
)
  #strong[Description];

 Emet le parametre #raw("InitialValue"); au temps de simulation 0 puis transmet l'entree inchangee a chaque pas suivant (t \> 0). Utile pour amorcer une boucle algebrique ou definir la valeur d'un signal de retour avant que le premier echantillon reel soit disponible. Transparent pour t \> 0.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=25], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=90, y\=25], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("InitialValue");], [0], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [initialCondition], 
  [Famille], [Utilitaires], 
  [Taille rendue], [90 x 50], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= (t \> 0) ? u : InitialValue. #strong[Equation ou regle];

 #latex("y(t) = \\begin{cases} \\text{InitialValue} & t = 0 \\\\ u(t) & t > 0 \\end{cases}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/initialCondition.cpp", title: "Runtime")


== Exemple

Casser une boucle algebrique en amorcant le premier echantillon a 5.

``````matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','ic','type','initialCondition','inputs',1,'outputs',1,'params',struct('InitialValue',5)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','ic','fromIndex',0,'toIndex',0), struct('from','ic','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.5; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
