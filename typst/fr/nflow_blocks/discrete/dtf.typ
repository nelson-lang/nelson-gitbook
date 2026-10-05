#import "../nelson_help.typ": *

= dtf <nflow_blocks:discrete.dtf>


#block-icon(image("dtf.svg"))

Implemente une fonction de transfert discrete.

== Syntaxe

- #raw("Block type: dtf");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Implemente une fonction de transfert discrete.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs discrets], 
  [Type], [#raw("dtf");], 
  [Libelle], [Discrete TF], 
)
  #strong[Description];

 Implemente une fonction de transfert discrete.

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
  [#raw("num");], [\[1\]], 
  [#raw("den");], [\[1, -0.5\]], 
  [#raw("ts");], [0.1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("num");
- #raw("den");
- #raw("ts"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dtf], 
  [Famille], [Blocs discrets], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT normalise numerateur et denominateur par den\[0\] et efface les historiques.
- OUTPUT emet la sortie memorisee. UPDATE echantillonne a ts, decale les historiques et evalue la recurrence.
- Un numerateur vide vaut \[0\], un denominateur vide vaut \[1\], et ts vaut au moins 0.001. #strong[Equation ou regle];

 discrete transfer-function recurrence

 #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/dtf.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:discrete.dstateSpace>)[dstateSpace];, #nlink(<nflow_blocks:continuous.tf>)[tf];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
