#import "../nelson_help.typ": *

= gain <nflow_blocks:math.gain>


#block-icon(image("gain.svg"))

Multiplie l entree par un gain scalaire.

== Syntaxe

- #raw("Block type: gain");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Multiplie l entree par un gain scalaire.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs mathematiques], 
  [Type], [#raw("gain");], 
  [Libelle], [Gain], 
)
  #strong[Description];

 Multiplie l entree par un gain scalaire.

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
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=100, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("gain");], [2], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("gain"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [gain], 
  [Famille], [Blocs mathematiques], 
  [Taille graphique], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique.
- Si l entree 1 est deconnectee, la sortie memorisee est emise; sinon gain est resolu et multiplie par l entree. #strong[Equation ou regle];

 #latex("y = gain\\,u"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/gain.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.bias>)[bias];, #nlink(<nflow_blocks:math.mult>)[mult];, #nlink(<nflow_blocks:math.sum>)[sum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
