#import "nelson_help.typ": *

= onCleanup <interpreter:onCleanup>

Tâches de nettoyage à la fin de l'exécution d'une fonction

== Syntaxe

- #raw("onCleanup(function_handle)");
- #raw("obj = onCleanup(function_handle)");

== Argument d'entrée

/ function\_handle: un handle de fonction à exécuter lors du nettoyage.

== Argument de sortie

/ obj: un objet onCleanup qui exécute le handle de fonction spécifié lors du nettoyage.

== Description

#strong[onCleanup]; crée un objet qui exécute un handle de fonction spécifié lorsque l'objet est effacé ou sort de la portée, permettant ainsi d'effectuer automatiquement des tâches de nettoyage à la fin de l'exécution d'une fonction.

 #strong[cancel(obj)]; ou #strong[obj.cancel()]; empêche l'exécution de la fonction de nettoyage.


== Exemples

``````matlab
a = onCleanup(@() disp('Cleanup executed'))
clear a
``````

``````matlab
function cleanupExample(doCancel)
  disp('Display Figure')
  f = figure;
  cleanup = onCleanup(@()atTheEnd(f));
  if doCancel
    cleanup.cancel(); % other syntax: cancel(cleanup);
  end
  sleep(5)
end

function atTheEnd(f)
disp('Close Figure')
close(f)
end

cleanupExample(false);
cleanupExample(true);


``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
