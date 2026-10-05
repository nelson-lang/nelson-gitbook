#import "../nelson_help.typ": *

= width <nflow_blocks:utility.width>


#block-icon(image("width.svg"))

Sort le nombre d elements (largeur) de son signal d entree, sous forme scalaire.

== Syntaxe

- #raw("Type de bloc : width");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort le nombre d elements (largeur) de son signal d entree, sous forme scalaire.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Utilitaires], 
  [Type], [#raw("width");], 
  [Libelle], [Width], 
)
  #strong[Description];

 Sort le nombre d'elements du signal d'entree sous forme de constante scalaire (Width). Aide a la modelisation \/ introspection, p. ex. piloter un gain ou une borne de boucle par la largeur d'un bus ou d'un vecteur. La sortie est toujours scalaire quelle que soit la largeur d'entree. Interpreteur seul : le generateur de code aplatit les signaux vectoriels en fils scalaires avant l'emission par bloc, donc un modele contenant un bloc width est signale comme non generable.

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
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=80, y\=25], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#emph[aucun];], [], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [width], 
  [Famille], [Utilitaires], 
  [Taille rendue], [80 x 50], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= nombre d'elements du signal d'entree (scalaire). #strong[Capacites etendues];

 Execution native seulement (ce bloc n'est pas genere en code).

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/width.cpp", title: "Runtime")


== Exemple

Une constante \[10 20 30\] (largeur 3) vers un bloc width sort 3.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',[10 20 30])), struct('id','wd','type','width','inputs',1,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','wd','fromIndex',0,'toIndex',0), struct('from','wd','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:utility.mux>)[mux];, #nlink(<nflow_blocks:utility.demux>)[demux];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
