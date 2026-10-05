#import "../nelson_help.typ": *

= signalConversion <nflow_blocks:utility.signalConversion>


#block-icon(image("signalConversion.svg"))

Passe-plat qui recopie son entree vers sa sortie inchangee (point de conversion).

== Syntaxe

- #raw("Type de bloc : signalConversion");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Passe-plat qui recopie son entree vers sa sortie inchangee (point de conversion).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Utilitaires], 
  [Type], [#raw("signalConversion");], 
  [Libelle], [Signal Conversion], 
)
  #strong[Description];

 Un passe-plat qui recopie son entree vers sa sortie sans la modifier. Il marque un point de conversion de signal explicite dans un diagramme (frontiere de copie contigue \/ specification de signal) ; la valeur est identique, c'est donc une identite element par element. Scalaire ou vecteur.

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
  [#emph[aucun];], [], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [signalConversion], 
  [Famille], [Utilitaires], 
  [Taille rendue], [90 x 50], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= in, element par element. #strong[Equation ou regle];

 #latex("y = u"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/signalConversion.cpp", title: "Runtime")


== Exemple

L'entree 5 passe inchangee a 5.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',5)), struct('id','s','type','signalConversion','inputs',1,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','s','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:utility.convert>)[convert];, #nlink(<nflow_blocks:utility.reshape>)[reshape];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
