#import "../nelson_help.typ": *

= dashboardLinearGauge <nflow_blocks:dashboard.dashboardLinearGauge>


#block-icon(image("dashboardLinearGauge.svg"))

Affiche un signal lie sur une echelle lineaire droite.

== Syntaxe

- #raw("Block type: dashboardLinearGauge");

== Description

Affiche un signal lie sur une echelle lineaire droite.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardLinearGauge");], 
  [Libelle], [Linear Gauge], 
)
  #strong[Description];

 Le bloc Linear Gauge affiche la valeur du signal lie sous forme d un curseur se deplacant le long d une echelle lineaire droite entre les limites configurees.

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
  [Type de bloc], [dashboardLinearGauge], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [210 x 90], 
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

#nlink(<nflow_blocks:dashboard.dashboardMultiStateImage>)[dashboardMultiStateImage];, #nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton];, #nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge];, #nlink(<nflow_blocks:dashboard.dashboardRadioButton>)[dashboardRadioButton];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
