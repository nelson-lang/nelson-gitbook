#import "../nelson_help.typ": *

= stopSimulation <nflow_blocks:sink.stopSimulation>


#block-icon(image("stopSimulation.svg"))

Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois.

== Syntaxe

- #raw("Type de bloc : stopSimulation");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: Aucun port de sortie (ce bloc n en possede aucun).

== Description

Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Puits], 
  [Type], [#raw("stopSimulation");], 
  [Libelle], [Stop], 
)
  #strong[Description];

 Arrete la simulation a la fin du pas ou son entree devient non nulle pour la premiere fois, en positionnant #raw("SimCtx::stopRequested"); (respecte par la boucle a pas fixe et par la boucle solveur). Typiquement pilote par un bloc de comparaison ou de test d'intervalle pour arreter sur condition. Une entree, aucune sortie ; natif seulement.

 Enregistre en phase AFTER\_STEP afin d'observer les sorties stabilisees de chaque pas avant de decider d'arreter.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=20], 
)
 Ce bloc n'a aucun port de sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#emph[none];], [], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [stopSimulation], 
  [Famille], [Puits], 
  [Taille rendue], [40 x 40], 
  [Phases], [AFTER\_STEP], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- AFTER\_STEP : si un element d'entree !\= 0, positionner stopRequested \= true. #strong[Capacites etendues];

 Execution native seulement (ce bloc n'est pas genere en code).

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/stopSimulation.cpp", title: "Runtime")


== Exemple

Arreter le run des qu'une source echelon s'active a t \= 0.45.

``````matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','stop','type','stopSimulation','inputs',1,'outputs',0,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','stop','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];, #nlink(<nflow_blocks:logic.intervalTest>)[intervalTest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
