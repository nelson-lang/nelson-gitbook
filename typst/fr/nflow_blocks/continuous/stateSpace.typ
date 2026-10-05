#import "../nelson_help.typ": *

= stateSpace <nflow_blocks:continuous.stateSpace>


#block-icon(image("stateSpace.svg"))

Implemente un modele d etat continu scalaire.

== Syntaxe

- #raw("Block type: stateSpace");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Implemente un modele d etat continu scalaire.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs continus], 
  [Type], [#raw("stateSpace");], 
  [Libelle], [State-Space], 
)
  #strong[Description];

 Implemente un modele d etat continu scalaire.

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
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=160, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("A");], [1], 
  [#raw("B");], [1], 
  [#raw("C");], [1], 
  [#raw("D");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("A");
- #raw("B");
- #raw("C");
- #raw("D"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [stateSpace], 
  [Famille], [Blocs continus], 
  [Taille graphique], [160 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface l etat et la sortie.
- OUTPUT emet C\*x + D\*u. UPDATE avance x par integration d Euler x +\= dt\*(A\*x + B\*u). #strong[Equation ou regle];

 #latex("\\frac{dx}{dt} = A x + B u,\\quad y = C x + D u"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/stateSpace.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.tf>)[tf];, #nlink(<nflow_blocks:discrete.dstateSpace>)[dstateSpace];, #nlink(<nflow_blocks:continuous.integrator>)[integrator];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
