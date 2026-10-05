#import "../nelson_help.typ": *

= labelSink <nflow_blocks:sink.labelSink>


#block-icon(image("labelSink.svg"))

Nomme un signal d entree pour le routage par etiquette.

== Syntaxe

- #raw("Block type: labelSink");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Description

Nomme un signal d entree pour le routage par etiquette.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs puits], 
  [Type], [#raw("labelSink");], 
  [Libelle], [Label Sink], 
)
  #strong[Description];

 Nomme un signal d entree pour le routage par etiquette.

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

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("name");], [x], 
  [#raw("showNode");], [true], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("name");
- #raw("showNode"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [labelSink], 
  [Famille], [Blocs puits], 
  [Taille graphique], [40 x 40], 
  [Phases], [none], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Le handler n effectue aucun calcul numerique.
- L ordonnancement de sous-systeme indexe les labelSink par name afin que les labelSource correspondants lisent leur entree. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/labelSink.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:source.labelSource>)[labelSource];, #nlink(<nflow_blocks:sink.display>)[display];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
