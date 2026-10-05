#import "nelson_help.typ": *

= finish <engine:finish>

Script de terminaison défini par l'utilisateur pour Nelson.

== Description

#strong[startup.m]; dans Nelson permet d'initialiser des commandes spécifiées par l'utilisateur au démarrage de Nelson.

 Il exécute tout fichier nommé #strong[startup.m]; qui se trouve dans le chemin de recherche.

 Pour utiliser cette fonctionnalité, créez un fichier nommé #strong[startup.m]; dans le dossier userpath, qui fait partie du chemin de recherche de Nelson.

 Insérez dans ce fichier les commandes que vous souhaitez voir exécutées au démarrage de Nelson.

 Cela peut inclure la définition de constantes physiques, des valeurs par défaut pour les propriétés graphiques, l'ajout de facteurs de conversion, ou la pré-définition d'autres éléments souhaités dans votre espace de travail.

 La personnalisation du fichier #strong[startup.m]; vous permet d'établir un environnement adapté à chaque lancement de Nelson.


== Voir aussi

#nlink(<core:exit>)[exit];, #nlink(<core:quit>)[quit];, #nlink(<engine:startup>)[startup];, #nlink(<functions_manager:userpath>)[userpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
