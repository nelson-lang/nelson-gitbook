#import "../nelson_help.typ": *

= dashboardSliderSwitch <nflow_blocks:dashboard.dashboardSliderSwitch>


#block-icon(image("dashboardSliderSwitch.svg"))

Bascule un parametre lie entre deux etats via un interrupteur coulissant.

== Syntaxe

- #raw("Block type: dashboardSliderSwitch");

== Description

Bascule un parametre lie entre deux etats via un interrupteur coulissant.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardSliderSwitch");], 
  [Libelle], [Slider Switch], 
)
  #strong[Description];

 Le bloc Slider Switch bascule le parametre lie entre ses deux etats configures a l aide d un controle coulissant.

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
  [#raw("States");], [\[{"Value": 0, "Label": "Off"}, {"Value": 1, "Label": "On"}\]], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("States"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardSliderSwitch], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [120 x 45], 
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

#nlink(<nflow_blocks:dashboard.dashboardToggleSwitch>)[dashboardToggleSwitch];, #nlink(<nflow_blocks:dashboard.dashboardCallbackButton>)[dashboardCallbackButton];, #nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox];, #nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
