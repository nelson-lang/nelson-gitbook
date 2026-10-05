#import "../nelson_help.typ": *

= iteratorNumber <nflow_blocks:utility.iteratorNumber>


#block-icon(image("iteratorNumber.svg"))

fournit l'indice d'itération courant dans un sous-système For\/While Iterator

== Syntaxe

- #raw("Type de bloc : iteratorNumber");

== Argument d'entrée

/ ports d'entrée: 0 port(s) d'entrée déclaré(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie déclaré(s).

== Description

 #strong[Description];

 Placé dans un sous-système For Iterator ou While Iterator, ce bloc source fournit l'indice d'itération courant de la boucle englobante : 1 à la première passe, 2 à la deuxième, etc. En dehors d'un sous-système itérateur, il fournit 0.

 Cette valeur permet au corps de la boucle de dépendre de la passe en cours (par exemple pour construire une somme cumulée ou former une condition d'arrêt d'un While Iterator).

 #strong[Sortie(s)];

 

#table(
  columns: 3,
  table.header([Port], [Rôle], [Côté], ),
  [Port\_1], [Indice d'itération courant (base 1 ; 0 hors d'un corps itérateur).], [droite], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [iteratorNumber], 
  [Famille], [Blocs utilitaires], 
  [Phases], [OUTPUT], 
  [Génération de code], [natif seulement (non généré)], 
)
 Voir #strong[sous-systèmes For \/ While Iterator]; pour la sémantique complète.

 #strong[Sources d'implémentation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifeste")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/iterator.cpp", title: "Exécution")


== Voir aussi

#nlink(<nflow_blocks:utility.iteratorCondition>)[iteratorCondition];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
