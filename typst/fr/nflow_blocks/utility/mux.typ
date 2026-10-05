#import "../nelson_help.typ": *

= mux <nflow_blocks:utility.mux>


#block-icon(image("mux.svg"))

Regroupe plusieurs routes d entree vers une route de sortie.

== Syntaxe

- #raw("Block type: mux");

== Argument d'entrée

/ input ports: 2 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Regroupe plusieurs routes d entree vers une route de sortie.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs utilitaires], 
  [Type], [#raw("mux");], 
  [Libelle], [Mux], 
)
  #strong[Description];

 Regroupe plusieurs routes d entree vers une route de sortie.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=10], 
  [Port\_2], [Signal numerique lu par le bloc.], [left], [x\=0, y\=30], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=8, y\=20], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("inputs");], [2], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("inputs"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [mux], 
  [Famille], [Blocs utilitaires], 
  [Taille graphique], [8 x 40], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Le parametre inputs controle le nombre d entrees exposees.
- Utilise comme utilitaire de routage de graphe plutot que comme transformation numerique avec etat. #strong[Equation ou regle];

 output route carries configured inputs

 #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: registre de famille, chemin UI ou codegen; aucun fichier runtime natif dedie trouve.


== Voir aussi

#nlink(<nflow_blocks:utility.demux>)[demux];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
