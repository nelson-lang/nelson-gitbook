#import "../nelson_help.typ": *

= dashboardComboBox <nflow_blocks:dashboard.dashboardComboBox>


#block-icon(image("dashboardComboBox.svg"))

Selectionne une valeur parmi une liste deroulante.

== Syntaxe

- #raw("Block type: dashboardComboBox");

== Description

Selectionne une valeur parmi une liste deroulante.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardComboBox");], 
  [Libelle], [Combo Box], 
)
  #strong[Description];

 Le bloc Combo Box ecrit la valeur de l entree selectionnee dans le parametre lie. Chaque entree associe un libelle a une valeur.

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
  [#raw("States");], [\[{"Value": 0, "Label": "Label1"}, {"Value": 1, "Label": "Label2"}, {"Value": 2, "Label": "Label3"}\]], 
  [#raw("UseEnumeratedDataType");], [off], 
  [#raw("EnumeratedDataType");], [], 
  [#raw("Opacity");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("States");
- #raw("UseEnumeratedDataType");
- #raw("EnumeratedDataType");
- #raw("Opacity"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardComboBox], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [160 x 25], 
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

#nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope];, #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];, #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];, #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
