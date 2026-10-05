#import "../nelson_help.typ": *

= demux <nflow_blocks:utility.demux>


#block-icon(image("demux.svg"))

Route une entree vers plusieurs ports de sortie.

== Syntaxe

- #raw("Block type: demux");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 2 port(s) de sortie declare(s).

== Description

Route une entree vers plusieurs ports de sortie.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs utilitaires], 
  [Type], [#raw("demux");], 
  [Libelle], [Demux], 
)
  #strong[Description];

 Route une entree vers plusieurs ports de sortie.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=20], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=8, y\=10], 
  [Port\_2], [Signal numerique produit par le bloc.], [right], [x\=8, y\=30], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("outputs");], [2], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("outputs"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [demux], 
  [Famille], [Blocs utilitaires], 
  [Taille graphique], [8 x 40], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Le manifest controle le nombre de sorties.
- Le bloc est un utilitaire de routage de graphe plutot qu une transformation numerique avec etat. #strong[Equation ou regle];

 #latex("y_i = u"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: registre de famille, chemin UI ou codegen; aucun fichier runtime natif dedie trouve.


== Voir aussi

#nlink(<nflow_blocks:utility.mux>)[mux];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
