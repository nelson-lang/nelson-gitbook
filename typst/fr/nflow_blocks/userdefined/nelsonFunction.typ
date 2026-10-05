#import "../nelson_help.typ": *

= nelsonFunction <nflow_blocks:userdefined.nelsonFunction>


#block-icon(image("nelsonFunction.svg"))

Évalue une fonction Nelson à chaque pas de simulation.

== Syntaxe

- #raw("Type de bloc : nelsonFunction");

== Argument d'entrée

/ ports d'entrée: 1 port d'entrée (u, double scalaire ou vecteur). Une entrée non connectée vaut 0.

== Argument de sortie

/ ports de sortie: 1 port de sortie (double scalaire ou vecteur).

== Description

Appelle l'interpréteur Nelson à chaque pas de simulation pour évaluer #raw("Fcn"); avec l'entrée #raw("u"); du bloc. #raw("Fcn"); est un nom de fonction (#raw("sin");), une fonction anonyme (#raw("@(u) 2*u");) ou une expression utilisant #raw("u"); (#raw("atan2(u(1), u(2))");).

  #raw("OutputDimensions"); : -1 hérite de la largeur d'entrée (hypothèse élément par élément) ; donnez une valeur explicite quand la fonction change la largeur du signal. La fonction est sondée une fois à l'initialisation ; une largeur incohérente arrête la simulation avec un diagnostic clair, de même que toute erreur levée par la fonction.

 L'interpréteur étant invoqué à chaque pas, ce bloc est plus lent que les blocs natifs. Pour une expression purement mathématique, préférez le bloc #raw("expression");, qui génère aussi du code.

 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("Fcn");], [sin], 
  [#raw("OutputDimensions");], [-1], 
  [#raw("SampleTime");], [-1], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [nelsonFunction], 
  [Famille], [Blocs fonctions utilisateur], 
  [Phases], [INIT, ALGEBRAIC], 
  [Transfert direct], [oui], 
  [Type de signal], [double, scalaire ou vecteur], 
  [Génération de code], [non (rejet explicite ; remplacez par le bloc expression)], 
)
 

#source-ref("modules/nflow_blocks/libraries/userdefined/library.json", title: "Manifeste")

 

#source-ref("modules/nflow_blocks/src/cpp/userdefined/nelsonFunction.cpp", title: "Runtime")


== Exemple

Ouvrir la démo des blocs fonction utilisateur (Nelson Function + Expression)

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
``````


== Voir aussi

#nlink(<nflow_blocks:userdefined.expression>)[expression];, #nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
