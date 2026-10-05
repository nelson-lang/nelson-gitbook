#import "../nelson_help.typ": *

= scope <nflow_blocks:sink.scope>


#block-icon(image("scope.svg"))

Stocke des series temporelles pour affichage.

== Syntaxe

- #raw("Block type: scope");

== Argument d'entrée

/ input ports: 3 port(s) d entree declare(s).

== Description

Stocke des series temporelles pour affichage.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs puits], 
  [Type], [#raw("scope");], 
  [Libelle], [Scope], 
)
  #strong[Description];

 Stocke des series temporelles pour affichage.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=40], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=80], 
  [Port\_3], [Signal numerique lu par le bloc.], [left], [x\=0, y\=120], 
)
 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("tMin");], [], 
  [#raw("tMax");], [], 
  [#raw("yMin");], [], 
  [#raw("yMax");], [], 
  [#raw("width");], [220], 
  [#raw("height");], [160], 
  [#raw("showTickLabels");], [false], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("tMin");
- #raw("tMax");
- #raw("yMin");
- #raw("yMax");
- #raw("width");
- #raw("height");
- #raw("showTickLabels"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [scope], 
  [Famille], [Blocs puits], 
  [Taille graphique], [220 x 160], 
  [Phases], [INIT, AFTER\_STEP], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface les series stockees.
- AFTER\_STEP ajoute une valeur par entree declaree; les entrees absentes ajoutent NaN.
- Le bloc n a pas de sortie. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/scope.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.xyScope>)[xyScope];, #nlink(<nflow_blocks:sink.xyzScope>)[xyzScope];, #nlink(<nflow_blocks:sink.display>)[display];, #nlink(<nflow_blocks:sink.fileSink>)[fileSink];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
