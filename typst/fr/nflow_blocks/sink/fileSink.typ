#import "../nelson_help.typ": *

= fileSink <nflow_blocks:sink.fileSink>


#block-icon(image("fileSink.svg"))

Represente un recepteur de sortie fichier.

== Syntaxe

- #raw("Block type: fileSink");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Description

Represente un recepteur de sortie fichier.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs puits], 
  [Type], [#raw("fileSink");], 
  [Libelle], [Output File], 
)
  #strong[Description];

 Represente un recepteur de sortie fichier.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("path");], [output.csv], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("path"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [fileSink], 
  [Famille], [Blocs puits], 
  [Taille graphique], [80 x 80], 
  [Phases], [none], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT : tronque le fichier CSV (parametre FileName) et ecrit l en-tete "t,\<id\>" (une colonne par element pour un signal vectoriel).
- AFTER\_STEP : ajoute une ligne par echantillon (temps puis valeurs) ; le fichier est ouvert et ferme a chaque phase, une execution annulee garde les lignes deja ecrites.
- Le code genere ne fait aucune E\/S fichier : le bloc devient une colonne de sortie du CSV du programme genere (etiquetee avec l identifiant du bloc). #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/fileSink.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.display>)[display];, #nlink(<nflow_blocks:source.fileSource>)[fileSource];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
