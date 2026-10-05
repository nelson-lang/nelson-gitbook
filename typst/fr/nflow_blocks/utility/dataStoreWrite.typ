#import "../nelson_help.typ": *

= dataStoreWrite <nflow_blocks:utility.dataStoreWrite>


#block-icon(image("dataStoreWrite.svg"))

Ecrit son entree dans la memoire de donnees nommee.

== Syntaxe

- #raw("Type de bloc : dataStoreWrite");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: Aucun port de sortie (ce bloc n en a aucun).

== Description

Ecrit son entree dans la memoire de donnees nommee.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Utilitaires], 
  [Type], [#raw("dataStoreWrite");], 
  [Libelle], [Data Store Write], 
)
  #strong[Description];

 Ecrit la valeur d'entree dans la memoire nommee #raw("DataStoreName"); declaree par un bloc #raw("dataStoreMemory"); (une entree correspondante est creee s'il n'y en a pas). L'ecriture a lieu en phase UPDATE, donc un #raw("dataStoreRead"); du meme nom la voit au pas suivant. Une entree, aucune sortie. Natif seulement ; scalaire.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=30], 
)
 Ce bloc n'a aucun port de sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("DataStoreName");], [A], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dataStoreWrite], 
  [Famille], [Utilitaires], 
  [Taille rendue], [70 x 60], 
  [Phases], [INIT, UPDATE], 
  [Etat interne ou historique], [oui], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- UPDATE : store\[DataStoreName\] \= u. #strong[Capacites etendues];

 Execution native seulement (ce bloc n'est pas genere en code).

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/dataStore.cpp", title: "Runtime")


== Exemple

Voir l'exemple dataStoreMemory, qui cable une rampe a travers un Write.

``````matlab
% See the dataStoreMemory example for a complete Memory/Write/Read wiring.
``````


== Voir aussi

#nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory];, #nlink(<nflow_blocks:utility.dataStoreRead>)[dataStoreRead];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
