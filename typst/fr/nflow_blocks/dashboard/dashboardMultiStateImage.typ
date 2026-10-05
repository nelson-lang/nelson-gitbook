#import "../nelson_help.typ": *

= dashboardMultiStateImage <nflow_blocks:dashboard.dashboardMultiStateImage>


#block-icon(image("dashboardMultiStateImage.svg"))

Affiche une image parmi plusieurs selon un signal lie.

== Syntaxe

- #raw("Block type: dashboardMultiStateImage");

== Description

Affiche une image parmi plusieurs selon un signal lie.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardMultiStateImage");], 
  [Libelle], [MultiStateImage], 
)
  #strong[Description];

 Le bloc MultiStateImage affiche une image parmi un ensemble configure, choisie selon la valeur du signal lie. Les valeurs sans etat correspondant utilisent l image par defaut.

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
  [#raw("States");], [\[{"State": 0, "Size": \[0, 0\], "Image": "", "Thumbnail": ""}\]], 
  [#raw("DefaultImage");], [{"Size": \[0, 0\], "Image": "", "Thumbnail": ""}], 
  [#raw("ScaleMode");], [Fill with fixed aspect ratio], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("States");
- #raw("DefaultImage");
- #raw("ScaleMode"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardMultiStateImage], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [190 x 180], 
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

#nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton];, #nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge];, #nlink(<nflow_blocks:dashboard.dashboardRadioButton>)[dashboardRadioButton];, #nlink(<nflow_blocks:dashboard.dashboardRockerSwitch>)[dashboardRockerSwitch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
