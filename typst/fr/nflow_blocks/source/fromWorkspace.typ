#import "../nelson_help.typ": *

= fromWorkspace <nflow_blocks:source.fromWorkspace>


#block-icon(image("fromWorkspace.svg"))

Lit un signal depuis une variable du workspace Nelson.

== Syntaxe

- #raw("Type de bloc : fromWorkspace");

== Argument de sortie

/ ports de sortie: 1 port de sortie (double scalaire ou vecteur, largeur issue de la variable).

== Description

Émet le signal contenu dans la variable #raw("VariableName"); du workspace de base. La variable est lue une fois au lancement de la simulation. Deux formats sont acceptés :

 

- une matrice #raw("[temps, valeurs]"); : première colonne \= temps, colonnes suivantes \= éléments du signal ;
- une structure avec les champs #raw("time"); (Nx1) et #raw("signals.values"); (NxW).  Le temps doit être croissant au sens large, sans Inf ni NaN ; des instants dupliqués décrivent des discontinuités. Avec #raw("Interpolate"); à on, la sortie est interpolée linéairement (avant le premier point : extrapolation linéaire des deux premiers points ; à un instant dupliqué la valeur la plus récente gagne). À off, le bloc maintient le dernier échantillon (zéro avant le premier point).

 Après le dernier point, #raw("OutputAfterFinalValue"); choisit #raw("Extrapolation"); (linéaire, exige l'interpolation), #raw("Setting to zero"); ou #raw("Holding final value");.

 La génération de code fige les échantillons dans des tables constantes avec la même sémantique de lecture (signaux scalaires).

 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("VariableName");], [simin], 
  [#raw("SampleTime");], [0], 
  [#raw("Interpolate");], [on], 
  [#raw("OutputAfterFinalValue");], [Extrapolation], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [fromWorkspace], 
  [Famille], [Blocs sources], 
  [Phases], [INIT, OUTPUT], 
  [Type de signal], [double, scalaire ou vecteur], 
  [Génération de code], [oui (tables constantes, signaux scalaires)], 
)
 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifeste")

 

#source-ref("modules/nflow_blocks/src/cpp/source/fromWorkspace.cpp", title: "Runtime")


== Exemple

Lancer la démo From\/To Workspace (définit 'simin' puis ouvre le modèle)

``````matlab
run([modulepath('nflow_blocks'), '/examples/workspace/From_Workspace_Demo.m']);
``````


== Voir aussi

#nlink(<nflow_blocks:sink.toWorkspace>)[toWorkspace];, #nlink(<nflow_blocks:source.fileSource>)[fileSource];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
