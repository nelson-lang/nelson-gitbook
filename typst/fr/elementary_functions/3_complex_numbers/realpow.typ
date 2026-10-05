#import "../nelson_help.typ": *

= realpow <elementary_functions:3_complex_numbers.realpow>

Puissance element par element avec resultat reel.

== Syntaxe

- #raw("Z = realpow(X, Y)");

== Argument d'entrée

/ X: Valeurs reelles de base.
/ Y: Valeurs reelles d'exposant.

== Argument de sortie

/ Z: resultat de X .^ Y lorsque toutes les valeurs sont reelles.

== Description

#strong[realpow]; calcule les puissances element par element et retourne une erreur si une entree ou le resultat est complexe.

 #strong[X]; et #strong[Y]; doivent avoir des tailles compatibles pour la puissance element par element.


== Exemple

``````matlab
X = -2 * ones(3, 3);
Y = pascal(3);
Z = realpow(X, Y)
``````


== Voir aussi

#nlink(<operators:power>)[power];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];, #nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:2_elementary_math.nthroot>)[nthroot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
