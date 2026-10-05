#import "../nelson_help.typ": *

= clock <nflow_blocks:source.clock>


#block-icon(image("clock.svg"))

Produit le temps courant de simulation.

== Syntaxe

- #raw("Block type: clock");

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Produit le temps courant de simulation.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs sources], 
  [Type], [#raw("clock");], 
  [Libelle], [Clock], 
)
  #strong[Description];

 Produit le temps courant de simulation.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

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
  [#raw("displayTime");], [false], 
  [#raw("decimation");], [10], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("displayTime");
- #raw("decimation"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [clock], 
  [Famille], [Blocs sources], 
  [Taille graphique], [80 x 80], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc OUTPUT sans entree.
- Ecrit directement ctx.t sur la sortie.
- displayTime et decimation ne concernent que l affichage de l icone. #strong[Equation ou regle];

 #latex("y = t"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/clock.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:source.ramp>)[ramp];, #nlink(<nflow_blocks:source.sine>)[sine];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
