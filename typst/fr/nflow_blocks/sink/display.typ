#import "../nelson_help.typ": *

= display <nflow_blocks:sink.display>


#block-icon(image("display.svg"))

Stocke la derniere valeur d entree pour affichage.

== Syntaxe

- #raw("Block type: display");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Description

Stocke la derniere valeur d entree pour affichage.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs puits], 
  [Type], [#raw("display");], 
  [Libelle], [Display], 
)
  #strong[Description];

 Stocke la derniere valeur d entree pour affichage.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=30], 
)
 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("label");], [Display], 
  [#raw("format");], [short], 
  [#raw("decimation");], [1], 
  [#raw("floatingDisplay");], [false], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("label");
- #raw("format");
- #raw("decimation");
- #raw("floatingDisplay"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [display], 
  [Famille], [Blocs puits], 
  [Taille graphique], [120 x 60], 
  [Phases], [INIT, AFTER\_STEP], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface le scalaire memorise.
- AFTER\_STEP echantillonne l entree 1 selon decimation; les valeurs sous 1 valent 1.
- Le bloc n a pas de port de sortie. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/display.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.terminator>)[terminator];, #nlink(<nflow_blocks:sink.fileSink>)[fileSink];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
