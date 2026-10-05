#import "../nelson_help.typ": *

= toggleSwitch <nflow_blocks:utility.toggleSwitch>


#block-icon(image("toggleSwitch.svg"))

Produit l une de deux valeurs configurees depuis state.

== Syntaxe

- #raw("Block type: toggleSwitch");

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Produit l une de deux valeurs configurees depuis state.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs utilitaires], 
  [Type], [#raw("toggleSwitch");], 
  [Libelle], [Toggle Switch], 
)
  #strong[Description];

 Produit l une de deux valeurs configurees depuis state.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=80, y\=25], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("state");], [0], 
  [#raw("onLabel");], [ON], 
  [#raw("offLabel");], [OFF], 
  [#raw("onValue");], [1], 
  [#raw("offValue");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("state");
- #raw("onLabel");
- #raw("offLabel");
- #raw("onValue");
- #raw("offValue"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [toggleSwitch], 
  [Famille], [Blocs utilitaires], 
  [Taille graphique], [80 x 50], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc OUTPUT sans entree.
- state non nul produit onValue; state nul produit offValue.
- onLabel et offLabel modifient seulement les libelles UI. #strong[Equation ou regle];

 #latex("y = \\begin{cases} onValue, & state \\ne 0 \\\\ offValue, & state = 0 \\end{cases}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/toggleSwitch.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:utility.switch>)[switch];, #nlink(<nflow_blocks:source.constant>)[constant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
