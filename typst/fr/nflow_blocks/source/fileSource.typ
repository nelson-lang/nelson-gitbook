#import "../nelson_help.typ": *

= fileSource <nflow_blocks:source.fileSource>


#block-icon(image("fileSource.svg"))

Produit des valeurs depuis les tableaux precharges times et values.

== Syntaxe

- #raw("Block type: fileSource");

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Produit des valeurs depuis les tableaux precharges times et values.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs sources], 
  [Type], [#raw("fileSource");], 
  [Libelle], [File], 
)
  #strong[Description];

 Produit des valeurs depuis les tableaux precharges times et values.

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
  [#raw("path");], [], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("path"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [fileSource], 
  [Famille], [Blocs sources], 
  [Taille graphique], [80 x 80], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT copie params.times et params.values numeriques dans l etat et remet l index a zero.
- OUTPUT retourne 0 si les donnees sont vides; sinon il avance jusqu au dernier temps non superieur a t.
- path est une metadonnee de configuration pour le chargement; le handler natif consomme les tableaux precharges. #strong[Equation ou regle];

 #latex("y = values_{index(t)}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/fileSource.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:sink.fileSink>)[fileSink];, #nlink(<nflow_blocks:source.constant>)[constant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
