#import "nelson_help.typ": *

= asserts.isapprox <assert_functions:asserts.isapprox>

Verifie que les valeurs numeriques calculee et attendue sont approximativement egales.

== Syntaxe

- #raw("asserts.isapprox(computed, expected)");
- #raw("asserts.isapprox(computed, expected, relTol)");
- #raw("asserts.isapprox(computed, expected, relTol, absTol)");
- #raw("asserts.isapprox(computed, expected, message)");
- #raw("[res, msg] = asserts.isapprox(computed, expected, relTol)");

== Argument d'entrée

/ computed: Valeur numerique calculee.
/ expected: Valeur numerique attendue.
/ relTol: Scalaire numerique fini non negatif utilise comme tolerance relative optionnelle.
/ absTol: Scalaire numerique fini non negatif utilise comme tolerance absolue optionnelle.
/ message: Message d'echec personnalise optionnel.

== Argument de sortie

/ res: true si l'assertion reussit, false sinon.
/ msg: message d'echec de l'assertion, vide en cas de succes.

== Description

Forme methode de assert\_isapprox.

 La comparaison relative initiale suit isapprox. Quand absTol est positive, une comparaison supplémentaire accepte les tableaux numériques de mêmes dimensions si chaque différence est au plus max(absTol, relTol \* max(abs(expected), abs(computed))). Les parties réelles et imaginaires sont contrôlées séparément. Les NaN correspondants et les infinis de même signe sont acceptés.

 La comparaison absolue accepte les entrées creuses\/creuses et creuses\/pleines, y compris les zéros implicites et des motifs de stockage différents. Deux tableaux creux sont comparés sur l'union de leurs coordonnées stockées, sans conversion en tableaux pleins. Un cas mixte parcourt le tableau plein et les coefficients creux stockés. Le diagnostic indique la première coordonnée différente.


== Exemples

Tolérance absolue avec un tableau creux

``````matlab
asserts.isapprox(sparse([0; 1e-10]), zeros(2, 1), 0, 1e-9);
``````

Absolute tolerance

``````matlab
asserts.isapprox(1, 1 + 1e-8, 0, 1e-7);
``````

Capture a diagnostic

``````matlab
[res, msg] = asserts.isapprox([1 2], [1 3], eps);
``````


== Voir aussi

#nlink(<assert_functions:assert_isapprox>)[assert\_isapprox];, #nlink(<assert_functions:asserts.notApprox>)[asserts.notApprox];, #nlink(<assert_functions:asserts.diff>)[asserts.diff];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
