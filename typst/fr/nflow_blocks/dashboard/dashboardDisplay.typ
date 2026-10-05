#import "../nelson_help.typ": *

= dashboardDisplay <nflow_blocks:dashboard.dashboardDisplay>


#block-icon(image("dashboardDisplay.svg"))

Affiche la valeur courante d un signal lie sous forme de texte.

== Syntaxe

- #raw("Block type: dashboardDisplay");

== Description

Affiche la valeur courante d un signal lie sous forme de texte.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardDisplay");], 
  [Libelle], [Display], 
)
  #strong[Description];

 Le bloc Display affiche la valeur instantanee du signal lie sous forme de texte, selon le format numerique choisi. Il se met a jour apres chaque pas de simulation.

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
  [#raw("Format");], [short], 
  [#raw("Alignment");], [Center], 
  [#raw("Opacity");], [1], 
  [#raw("Layout");], [Preserve dimensions], 
  [#raw("FormatString");], [%d], 
  [#raw("GridColor");], [\[0.502, 0.502, 0.502\]], 
  [#raw("ShowGrid");], [on], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("Format");
- #raw("Alignment");
- #raw("Opacity");
- #raw("Layout");
- #raw("FormatString");
- #raw("GridColor");
- #raw("ShowGrid"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardDisplay], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [180 x 40], 
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

#nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];, #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge];, #nlink(<nflow_blocks:dashboard.dashboardHalfGauge>)[dashboardHalfGauge];, #nlink(<nflow_blocks:dashboard.dashboardKnob>)[dashboardKnob];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
