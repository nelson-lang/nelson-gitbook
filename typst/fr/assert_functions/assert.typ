#import "nelson_help.typ": *

= assert <assert_functions:assert>

Verifie qu'une condition est vraie.

== Syntaxe

- #raw("assert(condition)");
- #raw("assert(condition, message)");
- #raw("assert(condition, message, value)");
- #raw("assert(condition, identifier, message)");
- #raw("assert(condition, identifier, message, value)");
- #raw("[res, msg] = assert(...)");

== Argument d'entrée

/ condition: Scalaire ou tableau logique ou numerique reel a tester. Chaque entree doit etre non nulle.
/ message: Message d'echec personnalise optionnel. Les remplacements de format sont pris en charge avec les valeurs suivantes.
/ identifier: Identifiant d'erreur optionnel utilise lorsque l'assertion leve une erreur.
/ value: Valeur optionnelle inseree dans le format du message.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: Message d'echec de l'assertion, vide en cas de succes.

== Description

#strong[assert]; leve une erreur lorsque condition est fausse et qu'aucune sortie n'est demandee.

 Avec sorties, les echecs d'assertion sont retournes dans #strong[res]; et #strong[msg]; au lieu d'etre leves.

 Utiliser le package #strong[asserts]; pour les helpers d'assertion qualifies, par exemple #strong[asserts.isequal(...)];.


== Exemples

Condition vraie

``````matlab
assert(5 > 3);
``````

Message personnalise

``````matlab
[res, msg] = assert(false, 'condition failed');
``````

Message formate

``````matlab
[res, msg] = assert(false, 'value %.2f', 1.234);
``````

Identifiant d'erreur

``````matlab
[res, msg] = assert(false, 'Nelson:asserts:example', 'condition failed');
``````


== Voir aussi

#nlink(<assert_functions:asserts.istrue>)[asserts.istrue];, #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];, #nlink(<assert_functions:asserts.isequal>)[asserts.isequal];, #nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [ajout des messages formates, des identifiants d'erreur et du mode avec sorties],
)

// Auteur: Allan CORNET
