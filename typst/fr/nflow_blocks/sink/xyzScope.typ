#import "../nelson_help.typ": *

= xyzScope <nflow_blocks:sink.xyzScope>


#block-icon(image("xyzScope.svg"))

Stocke des echantillons X\/Y\/Z pour affichage 3D.

== Syntaxe

- #raw("Block type: xyzScope");

== Argument d'entrée

/ input ports: 3 port(s) d entree declare(s).

== Description

Stocke des echantillons X\/Y\/Z pour affichage 3D.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs puits], 
  [Type], [#raw("xyzScope");], 
  [Libelle], [XYZ Scope], 
)
  #strong[Description];

 Stocke des echantillons X\/Y\/Z pour affichage 3D.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=50], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=90], 
  [Port\_3], [Signal numerique lu par le bloc.], [left], [x\=0, y\=130], 
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
  [#raw("zMin");], [], 
  [#raw("zMax");], [], 
  [#raw("width");], [220], 
  [#raw("height");], [180], 
  [#raw("rotationX");], [30], 
  [#raw("rotationY");], [45], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("xMin");
- #raw("xMax");
- #raw("yMin");
- #raw("yMax");
- #raw("zMin");
- #raw("zMax");
- #raw("width");
- #raw("height");
- #raw("rotationX");
- #raw("rotationY"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [xyzScope], 
  [Famille], [Blocs puits], 
  [Taille graphique], [220 x 180], 
  [Phases], [INIT, AFTER\_STEP], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface xSeries, ySeries et zSeries.
- AFTER\_STEP ajoute les trois entrees; les entrees absentes ajoutent NaN.
- Le bloc n a pas de sortie. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/xyzScope.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.scope>)[scope];, #nlink(<nflow_blocks:sink.xyScope>)[xyScope];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
