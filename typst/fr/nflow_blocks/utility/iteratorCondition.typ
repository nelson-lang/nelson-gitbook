#import "../nelson_help.typ": *

= iteratorCondition <nflow_blocks:utility.iteratorCondition>


#block-icon(image("iteratorCondition.svg"))

porte le prédicat de continuation d'un sous-système While Iterator

== Syntaxe

- #raw("Type de bloc : iteratorCondition");

== Argument d'entrée

/ ports d'entrée: 1 port(s) d'entrée déclaré(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie déclaré(s).

== Description

 #strong[Description];

 Placé dans un sous-système While Iterator, ce bloc désigne le signal booléen qui décide si la boucle recommence. Après chaque itération, le moteur lit son entrée : une valeur non nulle poursuit la boucle, une valeur nulle l'arrête (do-while : le corps s'exécute toujours au moins une fois, la condition étant évaluée après chaque passe). La boucle est aussi bornée par le garde-fou #raw("MaxIterations"); du sous-système.

 L'entrée est recopiée sur la sortie pour permettre à ce même signal d'alimenter un scope ou une sonde. Si aucun bloc iteratorCondition n'est présent, ou si son entrée n'est pas connectée, la boucle While s'exécute jusqu'au plafond.

 #strong[Entrée(s)];

 

#table(
  columns: 3,
  table.header([Port], [Rôle], [Côté], ),
  [Port\_1], [Prédicat de continuation : non nul poursuit, nul arrête.], [gauche], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 3,
  table.header([Port], [Rôle], [Côté], ),
  [Port\_1], [Recopie de l'entrée condition (pour sondage).], [droite], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [iteratorCondition], 
  [Famille], [Blocs utilitaires], 
  [Phases], [ALGEBRAIC], 
  [Génération de code], [natif seulement (non généré)], 
)
 Voir #strong[sous-systèmes For \/ While Iterator]; pour la sémantique complète.

 #strong[Sources d'implémentation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifeste")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/iterator.cpp", title: "Exécution")


== Voir aussi

#nlink(<nflow_blocks:utility.iteratorNumber>)[iteratorNumber];, #nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
