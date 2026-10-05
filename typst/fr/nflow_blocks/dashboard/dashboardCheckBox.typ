#import "../nelson_help.typ": *

= dashboardCheckBox <nflow_blocks:dashboard.dashboardCheckBox>


#block-icon(image("dashboardCheckBox.svg"))

Bascule un parametre lie entre deux valeurs via une case a cocher.

== Syntaxe

- #raw("Block type: dashboardCheckBox");

== Description

Bascule un parametre lie entre deux valeurs via une case a cocher.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardCheckBox");], 
  [Libelle], [Check Box], 
)
  #strong[Description];

 Le bloc Check Box bascule le parametre lie entre deux valeurs configurees selon qu il est coche ou non.

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
  [#raw("Label");], [Label], 
  [#raw("Values");], [\[0, 1\]], 
  [#raw("Opacity");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("Label");
- #raw("Values");
- #raw("Opacity"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardCheckBox], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [135 x 30], 
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

#nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox];, #nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope];, #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay];, #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
