#import "../nelson_help.typ": *

= toWorkspace <nflow_blocks:sink.toWorkspace>


#block-icon(image("toWorkspace.svg"))

Écrit le signal d'entrée dans une variable du workspace Nelson.

== Syntaxe

- #raw("Type de bloc : toWorkspace");

== Argument d'entrée

/ ports d'entrée: 1 port d'entrée (scalaire ou vecteur, tout type de signal).

== Description

Accumule son signal d'entrée aux pas majeurs de la simulation et, à l'arrêt de celle-ci, l'écrit dans la variable #raw("VariableName"); du workspace de base.

  #raw("Decimation"); conserve un échantillon sur k (en commençant par le premier). #raw("MaxDataPoints"); ne garde que les N derniers échantillons décimés (#raw("inf"); \= tout garder). #raw("SaveFormat"); choisit la forme de la variable :

 

- #raw("Structure With Time"); : champs #raw("time");, #raw("signals.values"); (NxW), #raw("signals.dimensions");, #raw("signals.label");, #raw("blockName"); ;
- #raw("Structure"); : idem avec un champ #raw("time"); vide ;
- #raw("Array"); : matrice NxW des échantillons (le temps est celui de la grille de simulation). Dans le code généré, le bloc est neutre (l'écriture workspace n'y a pas de sens).

 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("VariableName");], [simout], 
  [#raw("MaxDataPoints");], [inf], 
  [#raw("Decimation");], [1], 
  [#raw("SaveFormat");], [Structure With Time], 
  [#raw("SampleTime");], [-1], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [toWorkspace], 
  [Famille], [Blocs sorties], 
  [Phases], [INIT, AFTER\_STEP], 
  [Type de signal], [tous (enregistré en double)], 
  [Génération de code], [neutre (no-op)], 
)
 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/sink/library.json", title: "Manifeste")

 

#source-ref("modules/nflow_blocks/src/cpp/sink/toWorkspace.cpp", title: "Runtime")


== Exemple

Ouvrir la démo To Workspace (journalise une sinusoïde dans 'simout')

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/To_Workspace_Demo.nflow']);
``````


== Voir aussi

#nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace];, #nlink(<nflow_blocks:sink.scope>)[scope];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
