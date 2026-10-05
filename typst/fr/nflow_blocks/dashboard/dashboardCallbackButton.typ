#import "../nelson_help.typ": *

= dashboardCallbackButton <nflow_blocks:dashboard.dashboardCallbackButton>


#block-icon(image("dashboardCallbackButton.svg"))

Execute un rappel et ecrit une valeur lorsqu on clique.

== Syntaxe

- #raw("Block type: dashboardCallbackButton");

== Description

Execute un rappel et ecrit une valeur lorsqu on clique.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardCallbackButton");], 
  [Libelle], [Callback Button], 
)
  #strong[Description];

 Le bloc Callback Button execute la fonction de rappel configuree lorsqu on clique et peut ecrire une valeur dans le parametre lie. Utile pour declencher des actions scriptees depuis le tableau de bord.

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
  [#raw("ShowInitialText");], [off], 
  [#raw("ButtonText");], [Callback Button], 
  [#raw("ButtonType");], [Momentary], 
  [#raw("ClickFcn");], [], 
  [#raw("OnValue");], [1], 
  [#raw("PressDelay");], [500], 
  [#raw("PressFcn");], [], 
  [#raw("RepeatInterval");], [0], 
  [#raw("AutoActivate");], [true], 
  [#raw("fixedAspectRatio");], [off], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ButtonText");
- #raw("ButtonType");
- #raw("ClickFcn");
- #raw("OnValue");
- #raw("PressDelay");
- #raw("PressFcn");
- #raw("RepeatInterval");
- #raw("AutoActivate");
- #raw("fixedAspectRatio"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardCallbackButton], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [110 x 35], 
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

#nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox];, #nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox];, #nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope];, #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
