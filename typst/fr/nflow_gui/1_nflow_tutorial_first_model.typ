#import "nelson_help.typ": *

= nflow\_tutorial\_first\_model <nflow_gui:1_nflow_tutorial_first_model>

Tutoriel 1 sur 3 : construire, câbler et exécuter un premier modèle nflow.

== Syntaxe

- #raw("Tutoriel : poser trois blocs, les relier, exécuter et lire le scope.");

== Description

Ceci est le premier de trois courts tutoriels. Vous construisez un modèle à trois blocs, une source Sine, un Gain et un Scope, puis vous l'exécutez et lisez le résultat. Le modèle n'a ni rebouclage ni dynamique : c'est donc une bonne façon d'apprendre l'éditeur lui-même, à savoir poser des blocs, tracer des fils, modifier des paramètres et lancer une simulation.

 #strong[Ouvrir l'éditeur];

 Appelez #strong[nflow()]; depuis la ligne de commande Nelson pour ouvrir un modèle vide. La bibliothèque de blocs est à gauche, le diagramme au centre et l'inspecteur à droite. Sélectionnez un bloc pour voir ses paramètres dans l'inspecteur, ou ne sélectionnez rien pour afficher l'onglet #strong[Modèle]; et ses réglages de simulation.

 #strong[Poser les blocs];

 

+ Dans la bibliothèque, ouvrez le groupe #strong[Source]; et faites glisser un bloc #strong[Sine]; sur le diagramme.
+ Ouvrez le groupe #strong[Math]; et faites glisser un bloc #strong[Gain]; à droite du bloc Sine.
+ Ouvrez le groupe #strong[Sinks]; et faites glisser un bloc #strong[Scope]; à droite du bloc Gain. Laissez de l'espace entre les blocs pour que les fils aient la place de se router.

 #strong[Relier les blocs];

 

+ Placez le pointeur sur le port de sortie à droite du bloc Sine, puis glissez jusqu'au port d'entrée à gauche du bloc Gain. Relâchez pour créer le fil.
+ Tracez un second fil de la même manière, de la sortie du Gain vers l'entrée du Scope. Lorsque #strong[autoRoute]; est actif, l'éditeur garde les fils orthogonaux et lisibles quand vous déplacez les blocs. Voir #strong[nflow\_wire\_editing]; pour le routage manuel, les coins et les jonctions.

 
#image("nflow_tutorial_first_model_diagram.png")


 #strong[Régler les paramètres des blocs];

 Sélectionnez le bloc #strong[Gain]; et réglez #strong[Gain]; à 2 dans l'inspecteur. Sélectionnez le bloc #strong[Sine]; pour régler son amplitude et sa fréquence, ou conservez les valeurs par défaut. Chaque modification est appliquée au bloc au fur et à mesure de la saisie.

 #strong[Régler la durée de simulation];

 Ne sélectionnez rien pour afficher l'onglet #strong[Modèle];, puis ouvrez #strong[Simulation];. Réglez #strong[Temps d'arrêt (s)]; sur la durée de l'exécution, par exemple 10. Conservez #strong[Temps d'échantillonnage (s)]; à sa valeur par défaut pour ce modèle.

 #strong[Exécuter le modèle];

 Appuyez sur #strong[Exécuter]; dans la barre d'outils au-dessus du diagramme, ou utilisez le menu #strong[Simulation];. Le Scope se remplit pendant l'exécution. #strong[Arrêter]; arrête l'exécution et conserve les résultats déjà calculés. #strong[Réinitialiser]; remet le temps à zéro et efface les résultats affichés.

 #strong[Lire le scope];

 Le Scope montre le sinus amplifié. Sélectionnez le Scope et utilisez l'inspecteur pour régler les plages de temps et de valeurs (#strong[t min];, #strong[t max];, #strong[y min];, #strong[y max];), afficher les graduations, et définir la couleur du tracé et les libellés d'axes. Laissez un champ de plage vide pour que le Scope s'ajuste aux données.

 #strong[Pour aller plus loin];

 Remplacez le Sine par un #strong[Step]; ou un #strong[Pulse]; du groupe Source pour voir comment la sortie suit une entrée différente. Poursuivez ensuite avec #strong[nflow\_tutorial\_continuous]; pour ajouter un intégrateur et choisir un solveur.


== Voir aussi

#nlink(<nflow_gui:nflow>)[nflow];, #nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace];, #nlink(<nflow_gui:nflow_wire_editing>)[nflow\_wire\_editing];, #nlink(<nflow_gui:2_nflow_tutorial_continuous>)[nflow\_tutorial\_continuous];, #nlink(<nflow_gui:3_nflow_tutorial_dashboard>)[nflow\_tutorial\_dashboard];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
