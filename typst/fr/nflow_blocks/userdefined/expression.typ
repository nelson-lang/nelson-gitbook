#import "../nelson_help.typ": *

= expression <nflow_blocks:userdefined.expression>


#block-icon(image("expression.svg"))

Évalue une expression mathématique restreinte de u, en simulation et dans le code généré.

== Syntaxe

- #raw("Type de bloc : expression");

== Argument d'entrée

/ ports d'entrée: 1 port d'entrée (u, double scalaire).

== Argument de sortie

/ ports de sortie: 1 port de sortie (double scalaire).

== Description

Évalue l'expression mathématique #raw("Expr"); avec #raw("u"); (entrée du bloc), #raw("t"); (temps courant), #raw("dt"); (pas) et les variables du diagramme. Le même moteur d'expression sert à la simulation et à la génération de code C\/Rust : les comportements simulé et généré coïncident.

  Grammaire supportée : constantes #raw("pi");, #raw("e");, #raw("inf"); ; fonctions unaires #raw("abs, ceil, floor, round, sign, sqrt, exp, log, log10, log2, acos, asin, atan, cos, cosh, sin, sinh, tan, tanh, sinc"); ; binaires #raw("pow, atan2, min, max"); ; ternaire #raw("clamp"); ; opérateurs #raw("+ - * / ^");. Les constructions non mathématiques sont rejetées à la génération de code.

 Pour du code Nelson arbitraire (toute fonction, handles), utilisez le bloc #raw("nelsonFunction"); (simulation uniquement).

 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("Expr");], [u], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [expression], 
  [Famille], [Blocs fonctions utilisateur], 
  [Phases], [INIT, ALGEBRAIC], 
  [Transfert direct], [oui], 
  [Type de signal], [double, scalaire], 
  [Génération de code], [oui (C et Rust)], 
)
 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/userdefined/library.json", title: "Manifeste")

 

#source-ref("modules/nflow_blocks/src/cpp/userdefined/expression.cpp", title: "Runtime")


== Exemple

Ouvrir la démo des blocs fonction utilisateur (Expression + Nelson Function)

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
``````


== Voir aussi

#nlink(<nflow_blocks:userdefined.nelsonFunction>)[nelsonFunction];, #nlink(<nflow_blocks:math.gain>)[gain];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale (remplace le bloc userFunc, limité à la génération de code ; le bloc expression simule aussi)],
)

// Auteur: Allan CORNET
