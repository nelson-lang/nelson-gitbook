#import "../nelson_help.typ": *

= dashboardScope <nflow_blocks:dashboard.dashboardScope>


#block-icon(image("dashboardScope.svg"))

Trace les signaux lies en fonction du temps de simulation.

== Syntaxe

- #raw("Block type: dashboardScope");

== Description

Trace les signaux lies en fonction du temps de simulation.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardScope");], 
  [Libelle], [Dashboard Scope], 
)
  #strong[Description];

 Le bloc Dashboard Scope affiche un ou plusieurs signaux lies sous forme de courbes sur une fenetre temporelle glissante. Il echantillonne les signaux connectes apres chaque pas de simulation et rafraichit le trace, permettant de suivre l evolution des signaux pendant l execution.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("LabelPosition");], [Hide], 
  [#raw("Binding");], [], 
  [#raw("ShowInitialText");], [on], 
  [#raw("TimeSpan");], [auto], 
  [#raw("LegendPosition");], [Top], 
  [#raw("ScaleAtStop");], [on], 
  [#raw("UpdateMode");], [Wrap], 
  [#raw("NormalizeYAxis");], [off], 
  [#raw("TicksPosition");], [Outside], 
  [#raw("TickLabels");], [All], 
  [#raw("Grid");], [All], 
  [#raw("Border");], [on], 
  [#raw("Markers");], [off], 
  [#raw("FontColor");], [\[0, 0, 0\]], 
  [#raw("YLimits");], [\[-3, 3\]], 
  [#raw("Colors");], [\[\]], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("TimeSpan");
- #raw("LegendPosition");
- #raw("ScaleAtStop");
- #raw("UpdateMode");
- #raw("NormalizeYAxis");
- #raw("TicksPosition");
- #raw("TickLabels");
- #raw("Grid");
- #raw("Border");
- #raw("Markers");
- #raw("FontColor");
- #raw("YLimits");
- #raw("Colors"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardScope], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [230 x 165], 
  [Phases], [INIT, AFTER\_STEP], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT reinitialise le widget a son affichage initial.
- AFTER\_STEP echantillonne le signal lie et rafraichit l affichage.
- Le bloc ne fait que visualiser le signal; il ne declare aucun port de signal en entree ou sortie. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/dashboard/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/DashboardHandlers.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];, #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];, #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge];, #nlink(<nflow_blocks:dashboard.dashboardHalfGauge>)[dashboardHalfGauge];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
