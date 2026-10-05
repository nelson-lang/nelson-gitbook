#import "nelson_help.typ": *

= memoize <types:memoize>

Ajoute la mémoïsation à une fonction

== Syntaxe

- #raw("mf = memoize(fh)");

== Argument d'entrée

/ fh: handle de fonction à mémoïser.

== Argument de sortie

/ mf: objet MemoizedFunction qui met en cache les résultats de fh.

== Description

#strong[memoize]; retourne un objet MemoizedFunction qui met en cache les sorties du handle de fonction fh. Appeler l'objet retourné avec un jeu d'entrées évalue fh une seule fois pour ces entrées et retourne le résultat en cache lors des appels suivants avec les mêmes entrées. Mettez la propriété Enabled à false pour contourner le cache, et utilisez clearCache pour le vider.


== Exemple

``````matlab
mf = memoize(@(x) x .^ 2);
y = mf(4)
``````


== Voir aussi

#nlink(<function_handle:str2func>)[str2func];, #nlink(<function_handle:func2str>)[func2str];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
