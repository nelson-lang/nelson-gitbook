#import "../nelson_help.typ": *

= bias <nflow_blocks:math.bias>


#block-icon(image("bias.svg"))

Ajoute un biais constant a l entree.

== Syntaxe

- #raw("Block type: bias");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Ajoute un biais constant a l entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs mathematiques], 
  [Type], [#raw("bias");], 
  [Libelle], [Bias], 
)
  #strong[Description];

 Ajoute un biais constant a l entree.

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

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("bias");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("bias"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [bias], 
  [Famille], [Blocs mathematiques], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique. Le premier port d entree est requis.
- Le parametre bias est resolu par le resolueur numerique NFlow. #strong[Equation ou regle];

 #latex("y = u + bias"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/bias.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.gain>)[gain];, #nlink(<nflow_blocks:math.sum>)[sum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
