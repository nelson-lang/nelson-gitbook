#import "../nelson_help.typ": *

= enumeratedConstant <nflow_blocks:source.enumeratedConstant>


#block-icon(image("enumeratedConstant.svg"))

Sort une valeur d enumeration fixe (EnumClass la documente, Value est le nombre).

== Syntaxe

- #raw("Type de bloc : enumeratedConstant");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort une valeur d enumeration fixe (EnumClass la documente, Value est le nombre).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Source], 
  [Type], [#raw("enumeratedConstant");], 
  [Libelle], [Enumerated Constant], 
)
  #strong[Description];

 Sort une valeur d'enumeration fixe. #raw("EnumClass"); nomme l'enumeration (documentation seulement) et #raw("Value"); est la valeur numerique sous-jacente du membre choisi. Se comporte comme une constante porteuse d'un sens enumere ; sortie scalaire.

 #strong[Ports];

 Ce bloc n'a aucun port d'entree.

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
  [#raw("EnumClass");], [], 
  [#raw("Value");], [0], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [enumeratedConstant], 
  [Famille], [Source], 
  [Taille rendue], [90 x 50], 
  [Phases], [OUTPUT], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= Value (constante, a chaque pas). #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/enumeratedConstant.cpp", title: "Runtime")


== Exemple

EnumClass 'Color', Value 7 sort 7 a chaque pas.

``````matlab
d.blocks={ struct('id','e','type','enumeratedConstant','inputs',0,'outputs',1,'params',struct('EnumClass','Color','Value',7)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:source.constant>)[constant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
