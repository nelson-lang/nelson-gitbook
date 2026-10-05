#import "../nelson_help.typ": *

= dashboardLamp <nflow_blocks:dashboard.dashboardLamp>


#block-icon(image("dashboardLamp.svg"))

Affiche un voyant colore qui change selon un signal lie.

== Syntaxe

- #raw("Block type: dashboardLamp");

== Description

Affiche un voyant colore qui change selon un signal lie.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs tableau de bord], 
  [Type], [#raw("dashboardLamp");], 
  [Libelle], [Lamp], 
)
  #strong[Description];

 Le bloc Lamp affiche un voyant colore dont la couleur depend de la valeur du signal lie. Des correspondances valeur-couleur definissent les couleurs d etat; les autres valeurs utilisent la couleur par defaut.

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
  [#raw("ColorDefault");], [\[0.7529411764705882, 0.7529411764705882, 0.7529411764705882\]], 
  [#raw("StateColors");], [\[{"Value": 0, "Color": \[0.39215686274509803, 0.8313725490196079, 0.07450980392156863\]}\]], 
  [#raw("Opacity");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("LabelPosition");
- #raw("Binding");
- #raw("ShowInitialText");
- #raw("ColorDefault");
- #raw("StateColors");
- #raw("Opacity"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [dashboardLamp], 
  [Famille], [Blocs tableau de bord], 
  [Taille graphique], [65 x 60], 
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

#nlink(<nflow_blocks:dashboard.dashboardLinearGauge>)[dashboardLinearGauge];, #nlink(<nflow_blocks:dashboard.dashboardMultiStateImage>)[dashboardMultiStateImage];, #nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton];, #nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
