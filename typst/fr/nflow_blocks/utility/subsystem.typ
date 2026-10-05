#import "../nelson_help.typ": *

= subsystem <nflow_blocks:utility.subsystem>


#block-icon(image("subsystem.svg"))

Execute un diagramme imbrique comme un seul bloc.

== Syntaxe

- #raw("Block type: subsystem");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Execute un diagramme imbrique comme un seul bloc.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs utilitaires], 
  [Type], [#raw("subsystem");], 
  [Libelle], [Subsystem], 
)
  #strong[Description];

 Execute un diagramme imbrique comme un seul bloc.

 #strong[For-each];

 Avec un parametre #raw("forEach"); #raw("{\"numIterations\": N, \"partition\": [ports]}"); le sous-systeme execute son corps #raw("N"); fois par pas : une entree partitionnee de largeur #raw("N * w"); fournit a l'iteration #raw("i"); sa tranche de largeur #raw("w"); d'indice #raw("i");, une entree non partitionnee est diffusee a chaque iteration, et chaque sortie interne de largeur #raw("w_out"); est concatenee en une sortie externe de largeur #raw("N * w_out");. Cela applique un meme sous-diagramme reutilisable element par element sur un vecteur ou un banc de canaux. Le corps peut porter un etat par iteration, discret (un retard unitaire ou un filtre discret) ou continu (un integrateur ou une fonction de transfert integre par le solveur) : chaque iteration garde un historique independant \/ integre son propre canal.

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
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=120, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("name");], [Subsystem], 
  [#raw("externalInputs");], [\[\]], 
  [#raw("externalOutputs");], [\[\]], 
  [#raw("subsystem");], [], 
  [#raw("forEach");], [\[\] (pas d iteration)], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("name");
- #raw("externalInputs");
- #raw("externalOutputs");
- #raw("subsystem"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [subsystem], 
  [Famille], [Blocs utilitaires], 
  [Taille graphique], [120 x 80], 
  [Phases], [INIT, OUTPUT, ALGEBRAIC, UPDATE], 
  [Traversee directe], [oui], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT construit l etat interne depuis la specification subsystem et ordonnance les blocs internes par phase.
- OUTPUT route les entrees externes, execute les sorties internes et recopie les sorties externes.
- ALGEBRAIC evalue les blocs algebriques internes; UPDATE avance les blocs internes de mise a jour. #strong[Equation ou regle];

 nested model execution

 #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: registre de famille, chemin UI ou codegen; aucun fichier runtime natif dedie trouve.


== Voir aussi

#nlink(<nflow_blocks:utility.mux>)[mux];, #nlink(<nflow_blocks:utility.demux>)[demux];, #nlink(<nflow_blocks:utility.comment>)[comment];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
