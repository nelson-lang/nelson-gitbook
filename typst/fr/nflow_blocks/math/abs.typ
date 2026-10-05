#import "../nelson_help.typ": *

= abs <nflow_blocks:math.abs>


#block-icon(image("abs.svg"))

Produit la valeur absolue de son entree.

== Syntaxe

- #raw("Block type: abs");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Produit la valeur absolue de son entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs mathematiques], 
  [Type], [#raw("abs");], 
  [Libelle], [Abs], 
)
  #strong[Description];

 Produit la valeur absolue de son entree.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=80, y\=40], 
)
 #strong[Parametres];

 Aucun parametre de bloc n est declare dans le manifest.

 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [abs], 
  [Famille], [Blocs mathematiques], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. Le premier port d entree doit etre connecte.
- Calcule abs(u) et laisse la sortie precedente inchangee lorsque l entree requise est absente. #strong[Equation ou regle];

 #latex("y = |u|"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/abs.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.negate>)[negate];, #nlink(<nflow_blocks:math.min>)[min];, #nlink(<nflow_blocks:math.max>)[max];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
