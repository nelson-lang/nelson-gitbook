#import "../nelson_help.typ": *

= terminator <nflow_blocks:sink.terminator>


#block-icon(image("terminator.svg"))

Consomme un signal intentionnellement inutilise.

== Syntaxe

- #raw("Block type: terminator");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Description

Consomme un signal intentionnellement inutilise.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs puits], 
  [Type], [#raw("terminator");], 
  [Libelle], [Terminator], 
)
  #strong[Description];

 Consomme un signal intentionnellement inutilise.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=20], 
)
 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 Aucun parametre de bloc n est declare dans le manifest.

 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [terminator], 
  [Famille], [Blocs puits], 
  [Taille graphique], [40 x 40], 
  [Phases], [none], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Aucun calcul et aucun port de sortie.
- Utilise pour rendre explicites les fins de signaux inutilisees. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/terminator.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.display>)[display];, #nlink(<nflow_blocks:sink.scope>)[scope];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
