#import "../nelson_help.typ": *

= switchCase <nflow_blocks:logic.switchCase>

Aiguille un contrôle entier vers l'une de plusieurs sorties d'action.

== Syntaxe

- #raw("Type de bloc : switchCase");

== Argument d'entrée

/ ports d'entrée: 1 port d'entrée : la valeur de contrôle.

== Argument de sortie

/ ports de sortie: Une sortie par cas, plus une sortie par défaut optionnelle.

== Description

Aiguille un contrôle entier vers l'une de plusieurs sorties d'action.

 L'entrée scalaire est tronquée vers zéro en entier puis comparée à #raw("CaseConditions");, un littéral de tableau tel que #raw("{1, [7 9 4]}");. Le premier cas qui correspond met sa sortie à #raw("1.0"); et toutes les autres à #raw("0.0");. Avec #raw("ShowDefaultCase"); à #raw("on");, une valeur non appariée pilote la dernière sortie (par défaut). Pas de fall-through. Ces sorties servent à activer des sous-systèmes d'action.

 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("CaseConditions");], [{1}], 
  [#raw("ShowDefaultCase");], [on], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [switchCase], 
  [Famille], [Blocs logiques], 
  [Phases], [ALGEBRAIC], 
)
 #strong[Capacites etendues];

 Generation de code : prise en charge pour C et Rust.


== Voir aussi

#nlink(<nflow_blocks:logic.if>)[if];, #nlink(<nflow_blocks:utility.merge>)[merge];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
