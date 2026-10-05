#import "../nelson_help.typ": *

= labelSource <nflow_blocks:source.labelSource>


#block-icon(image("labelSource.svg"))

Lit un signal depuis un labelSink correspondant.

== Syntaxe

- #raw("Block type: labelSource");

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Lit un signal depuis un labelSink correspondant.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs sources], 
  [Type], [#raw("labelSource");], 
  [Libelle], [Label], 
)
  #strong[Description];

 Lit un signal depuis un labelSink correspondant.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=40, y\=20], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("name");], [x], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("name"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [labelSource], 
  [Famille], [Blocs sources], 
  [Taille graphique], [40 x 40], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc OUTPUT.
- Recherche un labelSink de meme name et transmet l entree de ce recepteur lorsqu elle existe.
- Si le nom ou la connexion manque, la sortie n est pas modifiee. #strong[Equation ou regle];

 #latex("y = \\mathrm{labeled\\ signal}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/labelSource.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.labelSink>)[labelSink];, #nlink(<nflow_blocks:source.constant>)[constant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
