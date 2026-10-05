#import "nelson_help.typ": *

= débogage <text_editor:debugging_workflow>

Flux de travail de débogage pour les fichiers de code Nelson.

== Description

Le débogueur Nelson fournit des outils interactifs pour diagnostiquer et corriger les problèmes dans les scripts et les fonctions en contrôlant l'exécution et en inspectant l'état du programme.

 Un flux de travail typique de débogage consiste à préparer le code, à interrompre l'exécution à des emplacements spécifiques, à examiner les valeurs des variables, à exécuter les instructions pas à pas, et à reprendre ou arrêter l'exécution.

 Avant de commencer une session de débogage, assurez-vous que tous les fichiers de code sont enregistrés et accessibles depuis le dossier actuel ou le chemin de recherche. Les modifications non enregistrées peuvent ne pas être prises en compte lors de l'exécution du code depuis la ligne de commande.

 L'exécution peut être interrompue en définissant des points d'arrêt ou en interrompant un programme en cours d'exécution. Lorsque l'exécution est interrompue, Nelson entre en mode débogage et l'invite de commande change pour indiquer que le débogueur a le contrôle.

 Pendant que l'exécution est interrompue, la ligne courante n'a pas encore été exécutée. Vous pouvez inspecter les variables dans l'espace de travail actuel, exécuter le code ligne par ligne, entrer ou sortir des fonctions, ou continuer l'exécution jusqu'au prochain point d'arrêt.

 Chaque fonction a son propre espace de travail. Lorsqu'on entre dans une fonction, l'espace de travail actif change pour refléter le contexte de la fonction.

 Après avoir identifié le problème, terminez la session de débogage pour revenir au mode d'exécution normal. La fin de la session restaure l'invite de commande standard et efface le contexte du débogueur.


== Exemples

Crée demo\_debugger.m pour des exemples de débogage.

``````matlab
n = 50;
r = rand(n,1);
plot(r)
m = mean(r);
hold on
plot([0,n],[m,m])
hold off
title("Mean of Random Uniform Data")
``````

Définissez un point d'arrêt dans la fonction demo\_debugger. Cliquez sur la marge gauche à côté du numéro de ligne pour basculer un point d'arrêt.


#align(center)[#image("set_breakpoint.png")]
Démarrez le débogage en appelant la fonction demo\_debugger depuis la ligne de commande ou le bouton "Exécuter le fichier".


#align(center)[#image("stop_at_breakpoint.png")]

== Voir aussi

#nlink(<text_editor:edit>)[edit];, #nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbstep>)[dbstep];, #nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstatus>)[dbstatus];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [Version initiale],
)

// Auteur: Allan CORNET
