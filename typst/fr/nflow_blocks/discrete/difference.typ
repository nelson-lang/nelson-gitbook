#import "../nelson_help.typ": *

= difference <nflow_blocks:discrete.difference>


#block-icon(image("difference.svg"))

Produit la difference avec l entree precedente.

== Syntaxe

- #raw("Block type: difference");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Produit la difference avec l entree precedente.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs discrets], 
  [Type], [#raw("difference");], 
  [Libelle], [Difference], 
)
  #strong[Description];

 Produit la difference avec l entree precedente.

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
  [#raw("initial");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("initial"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [difference], 
  [Famille], [Blocs discrets], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT stocke initial comme entree precedente.
- OUTPUT emet u - precedent. UPDATE stocke l entree courante. #strong[Equation ou regle];

 #latex("y_k = u_k - u_{k-1}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/difference.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:continuous.derivative>)[derivative];, #nlink(<nflow_blocks:discrete.ddelay>)[ddelay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
