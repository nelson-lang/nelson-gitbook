#import "../nelson_help.typ": *

= lookupDynamic <nflow_blocks:lookup.lookupDynamic>


#block-icon(image("lookupDynamic.svg"))

Recherche 1-D interpolee dont les breakpoints et la table sont pris sur les ports d entree.

== Syntaxe

- #raw("Type de bloc : lookupDynamic");

== Argument d'entrée

/ ports d entree: 3 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Recherche 1-D interpolee dont les breakpoints et la table sont pris sur les ports d entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Tables de correspondance], 
  [Type], [#raw("lookupDynamic");], 
  [Libelle], [Lookup Table Dynamic], 
)
  #strong[Description];

 Une lecture de table 1-D interpolee lineairement dont les donnees de breakpoints et de table proviennent de ports d'entree plutot que de parametres, de sorte que la table peut changer a l'execution. Port 0 \= valeur x ; port 1 \= vecteur de breakpoints xdat (strictement croissant) ; port 2 \= vecteur de table ydat (meme longueur). La sortie est l'interpolation lineaire de (xdat, ydat) en x, bornee hors plage.

 Execution native (la table vectorielle a l'execution sera generee en code ulterieurement).

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=20], 
  [Port\_2], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=40], 
  [Port\_3], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=60], 
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
  [#emph[none];], [], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [lookupDynamic], 
  [Famille], [Tables de correspondance], 
  [Taille rendue], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : localise l'intervalle dans xdat, interpole ydat lineairement, borne hors plage. #strong[Equation ou regle];

 #latex("y = \\text{interp}(\\text{xdat}, \\text{ydat}, x)"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/lookupDynamic.cpp", title: "Runtime")


== Exemple

Interpoler ydat\=\[0 1 4 9 16\] sur xdat\=\[0 1 2 3 4\] en x\=2.5 -\> 6.5.

``````matlab
d.blocks={ struct('id','x','type','constant','inputs',0,'outputs',1,'params',struct('Value',2.5)), struct('id','xd','type','constant','inputs',0,'outputs',1,'params',struct('Value',[0 1 2 3 4])), struct('id','yd','type','constant','inputs',0,'outputs',1,'params',struct('Value',[0 1 4 9 16])), struct('id','ld','type','lookupDynamic','inputs',3,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','x','to','ld','fromIndex',0,'toIndex',0), struct('from','xd','to','ld','fromIndex',0,'toIndex',1), struct('from','yd','to','ld','fromIndex',0,'toIndex',2), struct('from','ld','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];, #nlink(<nflow_blocks:lookup.prelookup>)[prelookup];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
