#import "../nelson_help.typ": *

= dashboardPushButton <nflow_blocks:dashboard.dashboardPushButton>


#block-icon(image("dashboardPushButton.svg"))

Ecrit une valeur dans un parametre lie lorsqu on l actionne.

== Syntaxe

- #raw("Block type: dashboardPushButton");

== Description

Ecrit une valeur dans un parametre lie lorsqu on l actionne.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardPushButton");], 
  [Libelle], [Push Button], 
)
  #strong[Description];

 Le bloc Push Button ecrit une valeur dans le parametre lie lorsqu on l actionne. Il peut fonctionner en mode momentane ou verrouille, et afficher un libelle ou une icone.

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
  [#raw("ButtonText");], [Button], 
  [#raw("OnValue");], [1], 
  [#raw("Opacity");], [1], 
  [#raw("ButtonType");], [Momentary], 
  [#raw("Icon");], [None], 
  [#raw("CustomIcon");], [], 
  [#raw("IconAlignment");], [Left], 
  [#raw("IconOnColor");], [\[0, 0.39215686274509803, 0\]], 
  [#raw("IconOffColor");], [\[0, 1, 0\]], 
  [#raw("IconColor");], [Off], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ButtonText");
- #raw("OnValue");
- #raw("Opacity");
- #raw("ButtonType");
- #raw("Icon");
- #raw("CustomIcon");
- #raw("IconAlignment");
- #raw("IconOnColor");
- #raw("IconOffColor");
- #raw("IconColor"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardPushButton], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [91 x 44], 
  [Phases], [aucune], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Le bloc ne declare aucune phase de simulation; il est pilote par le tableau de bord, pas par le solveur.
- L interaction utilisateur ecrit la valeur choisie dans le parametre lie avant ou pendant l execution.
- Le bloc ne declare aucun port de signal en entree ou sortie. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/dashboard/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/DashboardHandlers.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge];, #nlink(<nflow_blocks:dashboard.dashboardRadioButton>)[dashboardRadioButton];, #nlink(<nflow_blocks:dashboard.dashboardRockerSwitch>)[dashboardRockerSwitch];, #nlink(<nflow_blocks:dashboard.dashboardRotarySwitch>)[dashboardRotarySwitch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
