#import "../nelson_help.typ": *

= dashboardGauge <nflow_blocks:dashboard.dashboardGauge>


#block-icon(image("dashboardGauge.svg"))

Affiche un signal lie sous forme d aiguille sur un cadran circulaire.

== Syntaxe

- #raw("Block type: dashboardGauge");

== Description

Affiche un signal lie sous forme d aiguille sur un cadran circulaire.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardGauge");], 
  [Libelle], [Gauge], 
)
  #strong[Description];

 Le bloc Gauge affiche la valeur du signal lie sous forme d aiguille parcourant un cadran circulaire complet entre les limites configurees. Les couleurs d echelle mettent en evidence des plages de valeurs.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("LabelPosition");], [Top], 
  [#raw("Binding");], [], 
  [#raw("ShowInitialText");], [on], 
  [#raw("ScaleColors");], [\[\]], 
  [#raw("Limits");], [\[0, -1, 100\]], 
  [#raw("FontColor");], [\[0, 0, 0\]], 
  [#raw("Opacity");], [1], 
  [#raw("ScaleDirection");], [Clockwise], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ScaleColors");
- #raw("Limits");
- #raw("FontColor");
- #raw("Opacity");
- #raw("ScaleDirection"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardGauge], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [125 x 140], 
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

#nlink(<nflow_blocks:dashboard.dashboardHalfGauge>)[dashboardHalfGauge];, #nlink(<nflow_blocks:dashboard.dashboardKnob>)[dashboardKnob];, #nlink(<nflow_blocks:dashboard.dashboardLamp>)[dashboardLamp];, #nlink(<nflow_blocks:dashboard.dashboardLinearGauge>)[dashboardLinearGauge];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
