#import "../nelson_help.typ": *

= switch <nflow_blocks:utility.switch>


#block-icon(image("switch.svg"))

Selectionne l entree haute ou basse avec une entree de condition.

== Syntaxe

- #raw("Block type: switch");

== Argument d'entrée

/ input ports: 3 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Selectionne l entree haute ou basse avec une entree de condition.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs utilitaires], 
  [Type], [#raw("switch");], 
  [Libelle], [Switch], 
)
  #strong[Description];

 Selectionne l entree haute ou basse avec une entree de condition.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=0], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=40], 
  [Port\_3], [Signal numerique lu par le bloc.], [left], [x\=0, y\=80], 
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
  [#raw("condition");], [ge], 
  [#raw("threshold");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("condition");
- #raw("threshold"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [switch], 
  [Famille], [Blocs utilitaires], 
  [Taille graphique], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc algebrique.
- L entree 1 est la donnee haute, l entree 2 la condition, l entree 3 la donnee basse.
- condition prend en charge gt, ne et ge; les valeurs inconnues reviennent a ge.
- La generation C suit condition; la generation Rust traite actuellement l entree de condition comme non nulle ou nulle. #strong[Equation ou regle];

 #latex("y = \\begin{cases} u_1, & \\operatorname{condition}(u_2, threshold) \\\\ u_3, & \\mathrm{otherwise} \\end{cases}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/switch.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];, #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator];, #nlink(<nflow_blocks:utility.toggleSwitch>)[toggleSwitch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
