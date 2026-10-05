#import "../nelson_help.typ": *

= xyScope <nflow_blocks:sink.xyScope>


#block-icon(image("xyScope.svg"))

Stocke des paires X\/Y pour affichage.

== Syntaxe

- #raw("Block type: xyScope");

== Argument d'entrée

/ input ports: 2 port(s) d entree declare(s).

== Description

Stocke des paires X\/Y pour affichage.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs puits], 
  [Type], [#raw("xyScope");], 
  [Libelle], [XY Scope], 
)
  #strong[Description];

 Stocke des paires X\/Y pour affichage.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=50], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=110], 
)
 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("xMin");], [], 
  [#raw("xMax");], [], 
  [#raw("yMin");], [], 
  [#raw("yMax");], [], 
  [#raw("width");], [220], 
  [#raw("height");], [160], 
  [#raw("showTickLabels");], [false], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("xMin");
- #raw("xMax");
- #raw("yMin");
- #raw("yMax");
- #raw("width");
- #raw("height");
- #raw("showTickLabels"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [xyScope], 
  [Famille], [Blocs puits], 
  [Taille graphique], [220 x 160], 
  [Phases], [INIT, AFTER\_STEP], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface xSeries et ySeries.
- AFTER\_STEP ajoute l entree 1 a xSeries et l entree 2 a ySeries; les entrees absentes ajoutent NaN.
- Le bloc n a pas de sortie. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/xyScope.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.xyzScope>)[xyzScope];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
