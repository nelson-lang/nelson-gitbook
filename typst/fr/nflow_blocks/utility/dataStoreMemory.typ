#import "../nelson_help.typ": *

= dataStoreMemory <nflow_blocks:utility.dataStoreMemory>


#block-icon(image("dataStoreMemory.svg"))

Declare une memoire scalaire nommee partagee dans tout le modele (valeur initiale).

== Syntaxe

- #raw("Type de bloc : dataStoreMemory");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: Aucun port de sortie (ce bloc n en a aucun).

== Description

Declare une memoire scalaire nommee partagee dans tout le modele (valeur initiale).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Utilitaires], 
  [Type], [#raw("dataStoreMemory");], 
  [Libelle], [Data Store Memory], 
)
  #strong[Description];

 Declare une memoire scalaire nommee (#raw("DataStoreName");) avec une #raw("InitialValue");, sans aucun fil. La memoire est ecrite par des blocs #raw("dataStoreWrite"); et lue par des blocs #raw("dataStoreRead"); referencant le meme nom, permettant une communication a l'echelle du modele sans lignes de routage. Le magasin est une map par thread re-initialisee a chaque run par l'INIT de ce bloc.

 Natif seulement ; scalaire. Les lectures voient l'ecriture du pas precedent (latence d'un pas, comme un retard unitaire).

 #strong[Ports];

 Ce bloc n'a aucun port d'entree.

 Ce bloc n'a aucun port de sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("DataStoreName");], [A], 
  [#raw("InitialValue");], [0], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dataStoreMemory], 
  [Famille], [Utilitaires], 
  [Taille rendue], [70 x 60], 
  [Phases], [INIT], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT : store\[DataStoreName\] \= InitialValue. Le bloc n'a pas de ports. #strong[Capacites etendues];

 Execution native seulement (ce bloc n'est pas genere en code).

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/dataStore.cpp", title: "Runtime")


== Exemple

Declarer la memoire 'M', y ecrire une rampe et la relire avec une latence d'un pas.

``````matlab
d.blocks={ struct('id','mem','type','dataStoreMemory','inputs',0,'outputs',0,'params',struct('DataStoreName','M','InitialValue',0)), struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','wr','type','dataStoreWrite','inputs',1,'outputs',0,'params',struct('DataStoreName','M')), struct('id','rd','type','dataStoreRead','inputs',0,'outputs',1,'params',struct('DataStoreName','M')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','wr','fromIndex',0,'toIndex',0), struct('from','rd','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:utility.dataStoreWrite>)[dataStoreWrite];, #nlink(<nflow_blocks:utility.dataStoreRead>)[dataStoreRead];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
