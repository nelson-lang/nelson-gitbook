#import "../nelson_help.typ": *

= foh <nflow_blocks:discrete.foh>


#block-icon(image("foh.svg"))

Maintien d ordre un pour valeurs d entree echantillonnees.

== Syntaxe

- #raw("Block type: foh");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Maintien d ordre un pour valeurs d entree echantillonnees.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs discrets], 
  [Type], [#raw("foh");], 
  [Libelle], [FOH], 
)
  #strong[Description];

 Maintien d ordre un pour valeurs d entree echantillonnees.

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
  [#raw("ts");], [0.1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("ts"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [foh], 
  [Famille], [Blocs discrets], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface les echantillons precedent\/courant et planifie l echantillonnage.
- OUTPUT emet la sortie maintenue interpolee. UPDATE echantillonne l entree a ts.
- ts est contraint a au moins 0.001. #strong[Equation ou regle];

 linear interpolation between sampled values

 #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/foh.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:discrete.zoh>)[zoh];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
