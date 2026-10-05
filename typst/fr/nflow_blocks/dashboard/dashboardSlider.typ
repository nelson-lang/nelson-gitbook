#import "../nelson_help.typ": *

= dashboardSlider <nflow_blocks:dashboard.dashboardSlider>


#block-icon(image("dashboardSlider.svg"))

Definit un parametre lie en deplacant un curseur lineaire.

== Syntaxe

- #raw("Block type: dashboardSlider");

== Description

Definit un parametre lie en deplacant un curseur lineaire.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardSlider");], 
  [Libelle], [Slider], 
)
  #strong[Description];

 Le bloc Slider permet de definir le parametre lie en deplacant un curseur le long d une glissiere lineaire entre les limites configurees.

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
  [#raw("ScaleType");], [Linear], 
  [#raw("Limits");], [\[0, -1, 100\]], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ScaleType");
- #raw("Limits"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardSlider], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [200 x 90], 
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

#nlink(<nflow_blocks:dashboard.dashboardSliderSwitch>)[dashboardSliderSwitch];, #nlink(<nflow_blocks:dashboard.dashboardToggleSwitch>)[dashboardToggleSwitch];, #nlink(<nflow_blocks:dashboard.dashboardCallbackButton>)[dashboardCallbackButton];, #nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
