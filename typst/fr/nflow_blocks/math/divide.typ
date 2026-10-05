#import "../nelson_help.typ": *

= divide <nflow_blocks:math.divide>


#block-icon(image("divide.svg"))

Divise l entree 1 par l entree 2.

== Syntaxe

- #raw("Block type: divide");

== Argument d'entrée

/ input ports: 2 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Divise l entree 1 par l entree 2.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs mathematiques], 
  [Type], [#raw("divide");], 
  [Libelle], [Divide], 
)
  #strong[Description];

 Divise l entree 1 par l entree 2.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=30], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=50], 
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
  [Type de bloc], [divide], 
  [Famille], [Blocs mathematiques], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. Le premier port d entree est requis.
- Si abs(denominateur) est sous 1e-12, la sortie precedente reste inchangee. #strong[Equation ou regle];

 #latex("y = \\frac{u_1}{u_2}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/divide.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.mult>)[mult];, #nlink(<nflow_blocks:math.gain>)[gain];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
