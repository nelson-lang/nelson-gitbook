#import "../nelson_help.typ": *

= dataStoreRead <nflow_blocks:utility.dataStoreRead>


#block-icon(image("dataStoreRead.svg"))

Sort la valeur de la memoire de donnees nommee.

== Syntaxe

- #raw("Type de bloc : dataStoreRead");

== Argument d'entrée

/ ports d entree: Aucun port d entree (ce bloc n en a aucun).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort la valeur de la memoire de donnees nommee.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Utilitaires], 
  [Type], [#raw("dataStoreRead");], 
  [Libelle], [Data Store Read], 
)
  #strong[Description];

 Sort la valeur courante de la memoire nommee #raw("DataStoreName"); (0 si le magasin n'a jamais ete declare ni ecrit). La lecture a lieu en phase OUTPUT, donc elle renvoie la valeur ecrite au pas precedent. Aucune entree, une sortie. Natif seulement ; scalaire.

 #strong[Ports];

 Ce bloc n'a aucun port d'entree.

 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=70, y\=30], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("DataStoreName");], [A], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dataStoreRead], 
  [Famille], [Utilitaires], 
  [Taille rendue], [70 x 60], 
  [Phases], [OUTPUT], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- OUTPUT : out \= store\[DataStoreName\] (0 si absent). #strong[Capacites etendues];

 Execution native seulement (ce bloc n'est pas genere en code).

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/dataStore.cpp", title: "Runtime")


== Exemple

Voir l'exemple dataStoreMemory, qui relit 'M' vers un scope.

``````matlab
% See the dataStoreMemory example for a complete Memory/Write/Read wiring.
``````


== Voir aussi

#nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory];, #nlink(<nflow_blocks:utility.dataStoreWrite>)[dataStoreWrite];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
