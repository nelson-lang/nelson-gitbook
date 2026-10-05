#import "../nelson_help.typ": *

= derivative <nflow_blocks:continuous.derivative>


#block-icon(image("derivative.svg"))

Estime la derivee temporelle d une entree.

== Syntaxe

- #raw("Block type: derivative");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Estime la derivee temporelle d une entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs continus], 
  [Type], [#raw("derivative");], 
  [Libelle], [Derivative], 
)
  #strong[Description];

 Estime la derivee temporelle d une entree.

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
  [Type de bloc], [derivative], 
  [Famille], [Blocs continus], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface l entree precedente et la sortie derivee.
- OUTPUT emet la derivee memorisee. UPDATE calcule (u - precedent) \/ dt et stocke u.
- Si dt n est pas positif, la mise a jour utilise 0. #strong[Equation ou regle];

 #latex("y_k = \\frac{u_k - u_{k-1}}{dt}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/derivative.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:continuous.hpf>)[hpf];, #nlink(<nflow_blocks:continuous.lpf>)[lpf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
