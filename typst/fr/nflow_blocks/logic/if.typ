#import "../nelson_help.typ": *

= if <nflow_blocks:logic.if>

Sélectionne une sortie d'action à partir d'une expression booléenne sur les entrées.

== Syntaxe

- #raw("Type de bloc : if");

== Argument d'entrée

/ ports d'entrée: Les signaux u1..un référencés par les expressions.

== Argument de sortie

/ ports de sortie: Une sortie pour la clause if, une par elseif, plus une sortie else optionnelle.

== Description

Sélectionne une sortie d'action à partir d'une expression booléenne sur les entrées.

 La clause if et chaque clause elseif sont évaluées dans l'ordre sur les entrées #raw("u1..un"); ; la première clause vraie met sa sortie à #raw("1.0"); et toutes les autres à #raw("0.0");. Avec #raw("ShowElse"); à #raw("on");, un résultat entièrement faux pilote la dernière sortie (else). La grammaire d'expression est restreinte : comparaisons (#raw("< <= > >= == ~=");), logique (#raw("& | ~");), parenthèses, moins unaire, littéraux numériques et entrées #raw("u<k>");. Ces sorties servent à activer des sous-systèmes d'action.

 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("IfExpression");], [u1 \> 0], 
  [#raw("ElseIfExpressions");], [(séparées par des virgules, vide par défaut)], 
  [#raw("ShowElse");], [on], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [if], 
  [Famille], [Blocs logiques], 
  [Phases], [ALGEBRAIC], 
)
 #strong[Capacites etendues];

 Generation de code : prise en charge pour C et Rust.


== Voir aussi

#nlink(<nflow_blocks:logic.switchCase>)[switchCase];, #nlink(<nflow_blocks:utility.merge>)[merge];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
