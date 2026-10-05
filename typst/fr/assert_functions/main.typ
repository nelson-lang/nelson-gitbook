#import "nelson_help.typ": *

= Fonctions d'assertion

Le module assert\_functions fournit des assertions pour les tests unitaires, les contrats d'execution et les diagnostics.

 Toutes les assertions partagent le meme contrat : sans sortie elles levent une erreur en cas d'echec ; avec sorties elles retournent #strong[\[res, msg\]];.

 L'API canonique utilise des noms d'assertion qualifies, par exemple #strong[asserts.isequal];, #strong[asserts.warning]; et #strong[asserts.satisfies];.

== Functions

- #nlink(<assert_functions:assert>)[assert]: Verifie qu'une condition est vraie.
- #nlink(<assert_functions:assert_checkerror>)[assert\_checkerror]: Nom historique de asserts.checkerror.
- #nlink(<assert_functions:assert_isapprox>)[assert\_isapprox]: Nom historique de asserts.isapprox.
- #nlink(<assert_functions:assert_isequal>)[assert\_isequal]: Nom historique de asserts.isequal.
- #nlink(<assert_functions:assert_isfalse>)[assert\_isfalse]: Nom historique de asserts.isfalse.
- #nlink(<assert_functions:assert_istrue>)[assert\_istrue]: Nom historique de asserts.istrue.
- #nlink(<assert_functions:asserts.allfalse>)[asserts.allfalse]: Verifie que chaque entree logique vaut false.
- #nlink(<assert_functions:asserts.alltrue>)[asserts.alltrue]: Verifie que chaque entree logique vaut true.
- #nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror]: Verifie qu'une commande leve une erreur attendue.
- #nlink(<assert_functions:asserts.class>)[asserts.class]: Verifie qu'une valeur a la classe attendue.
- #nlink(<assert_functions:asserts.columnVector>)[asserts.columnVector]: Verifie qu'une valeur est un vecteur colonne.
- #nlink(<assert_functions:asserts.columns>)[asserts.columns]: Verifie le nombre de colonnes.
- #nlink(<assert_functions:asserts.contains>)[asserts.contains]: Verifie qu'un texte contient un motif.
- #nlink(<assert_functions:asserts.containsAll>)[asserts.containsAll]: Verifie qu'un texte contient tous les motifs attendus.
- #nlink(<assert_functions:asserts.containsAny>)[asserts.containsAny]: Verifie qu'un texte contient au moins un motif attendu.
- #nlink(<assert_functions:asserts.diff>)[asserts.diff]: Retourne les diagnostics d'egalite sans lever d'erreur.
- #nlink(<assert_functions:asserts.empty>)[asserts.empty]: Verifie qu'une valeur est vide.
- #nlink(<assert_functions:asserts.endsWith>)[asserts.endsWith]: Verifie qu'un texte se termine par un suffixe.
- #nlink(<assert_functions:asserts.fail>)[asserts.fail]: Force un echec d'assertion.
- #nlink(<assert_functions:asserts.fields>)[asserts.fields]: Verifie l'ensemble exact des champs d'une structure.
- #nlink(<assert_functions:asserts.finite>)[asserts.finite]: Verifie que chaque entree numerique est finie.
- #nlink(<assert_functions:asserts.greaterOrEqual>)[asserts.greaterOrEqual]: Verifie que chaque valeur est superieure ou egale a une limite.
- #nlink(<assert_functions:asserts.greaterThan>)[asserts.greaterThan]: Verifie que chaque valeur est strictement superieure a une limite.
- #nlink(<assert_functions:asserts.hasField>)[asserts.hasField]: Verifie qu'une structure possede un champ.
- #nlink(<assert_functions:asserts.hasFields>)[asserts.hasFields]: Verifie qu'une structure possede tous les champs attendus.
- #nlink(<assert_functions:asserts.inRange>)[asserts.inRange]: Verifie que chaque valeur est dans un intervalle inclusif.
- #nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox]: Verifie que les valeurs numeriques calculee et attendue sont approximativement egales.
- #nlink(<assert_functions:asserts.isequal>)[asserts.isequal]: Verifie que les valeurs calculee et attendue sont egales.
- #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse]: Verifie qu'une condition logique est fausse.
- #nlink(<assert_functions:asserts.istrue>)[asserts.istrue]: Verifie qu'une condition logique est vraie.
- #nlink(<assert_functions:asserts.length>)[asserts.length]: Verifie la longueur d'une valeur.
- #nlink(<assert_functions:asserts.lessOrEqual>)[asserts.lessOrEqual]: Verifie que chaque valeur est inferieure ou egale a une limite.
- #nlink(<assert_functions:asserts.lessThan>)[asserts.lessThan]: Verifie que chaque valeur est strictement inferieure a une limite.
- #nlink(<assert_functions:asserts.match>)[asserts.match]: Verifie qu'un texte correspond a une expression reguliere.
- #nlink(<assert_functions:asserts.matchesAll>)[asserts.matchesAll]: Verifie qu'un texte correspond a toutes les expressions regulieres.
- #nlink(<assert_functions:asserts.matchesAny>)[asserts.matchesAny]: Verifie qu'un texte correspond a au moins une expression reguliere.
- #nlink(<assert_functions:asserts.matrix>)[asserts.matrix]: Verifie qu'une valeur est bidimensionnelle.
- #nlink(<assert_functions:asserts.ndims>)[asserts.ndims]: Verifie le nombre de dimensions.
- #nlink(<assert_functions:asserts.noError>)[asserts.noError]: Verifie qu'une commande se termine sans erreur.
- #nlink(<assert_functions:asserts.nonNan>)[asserts.nonNan]: Verifie qu'aucune entree numerique ne vaut NaN.
- #nlink(<assert_functions:asserts.notApprox>)[asserts.notApprox]: Verifie que deux valeurs numeriques ne sont pas approximativement egales.
- #nlink(<assert_functions:asserts.notEqual>)[asserts.notEqual]: Verifie que deux valeurs ne sont pas egales.
- #nlink(<assert_functions:asserts.notempty>)[asserts.notempty]: Verifie qu'une valeur n'est pas vide.
- #nlink(<assert_functions:asserts.numel>)[asserts.numel]: Verifie le nombre d'elements d'une valeur.
- #nlink(<assert_functions:asserts.real>)[asserts.real]: Verifie qu'une valeur est reelle.
- #nlink(<assert_functions:asserts.rowVector>)[asserts.rowVector]: Verifie qu'une valeur est un vecteur ligne.
- #nlink(<assert_functions:asserts.rows>)[asserts.rows]: Verifie le nombre de lignes.
- #nlink(<assert_functions:asserts.sameSize>)[asserts.sameSize]: Verifie que deux valeurs ont la meme taille.
- #nlink(<assert_functions:asserts.satisfies>)[asserts.satisfies]: Verifie une valeur avec un predicat personnalise.
- #nlink(<assert_functions:asserts.scalar>)[asserts.scalar]: Verifie qu'une valeur est scalaire.
- #nlink(<assert_functions:asserts.size>)[asserts.size]: Verifie qu'une valeur a les dimensions attendues.
- #nlink(<assert_functions:asserts.squareMatrix>)[asserts.squareMatrix]: Verifie qu'une valeur est une matrice carree.
- #nlink(<assert_functions:asserts.startsWith>)[asserts.startsWith]: Verifie qu'un texte commence par un prefixe.
- #nlink(<assert_functions:asserts.throws>)[asserts.throws]: Verifie qu'une commande genere une erreur contenant le texte attendu.
- #nlink(<assert_functions:asserts.type>)[asserts.type]: Verifie qu'une valeur a l'une des classes attendues.
- #nlink(<assert_functions:asserts.vector>)[asserts.vector]: Verifie qu'une valeur est un vecteur.
- #nlink(<assert_functions:asserts.warning>)[asserts.warning]: Verifie qu'une commande emet l'avertissement attendu.
- #nlink(<assert_functions:asserts.warningFree>)[asserts.warningFree]: Verifie qu'une commande se termine sans avertissement.


#nested[
#pagebreak(weak: true)
#include "assert.typ"
#pagebreak(weak: true)
#include "assert_checkerror.typ"
#pagebreak(weak: true)
#include "assert_isapprox.typ"
#pagebreak(weak: true)
#include "assert_isequal.typ"
#pagebreak(weak: true)
#include "assert_isfalse.typ"
#pagebreak(weak: true)
#include "assert_istrue.typ"
#pagebreak(weak: true)
#include "asserts.allfalse.typ"
#pagebreak(weak: true)
#include "asserts.alltrue.typ"
#pagebreak(weak: true)
#include "asserts.checkerror.typ"
#pagebreak(weak: true)
#include "asserts.class.typ"
#pagebreak(weak: true)
#include "asserts.columnVector.typ"
#pagebreak(weak: true)
#include "asserts.columns.typ"
#pagebreak(weak: true)
#include "asserts.contains.typ"
#pagebreak(weak: true)
#include "asserts.containsAll.typ"
#pagebreak(weak: true)
#include "asserts.containsAny.typ"
#pagebreak(weak: true)
#include "asserts.diff.typ"
#pagebreak(weak: true)
#include "asserts.empty.typ"
#pagebreak(weak: true)
#include "asserts.endsWith.typ"
#pagebreak(weak: true)
#include "asserts.fail.typ"
#pagebreak(weak: true)
#include "asserts.fields.typ"
#pagebreak(weak: true)
#include "asserts.finite.typ"
#pagebreak(weak: true)
#include "asserts.greaterOrEqual.typ"
#pagebreak(weak: true)
#include "asserts.greaterThan.typ"
#pagebreak(weak: true)
#include "asserts.hasField.typ"
#pagebreak(weak: true)
#include "asserts.hasFields.typ"
#pagebreak(weak: true)
#include "asserts.inRange.typ"
#pagebreak(weak: true)
#include "asserts.isapprox.typ"
#pagebreak(weak: true)
#include "asserts.isequal.typ"
#pagebreak(weak: true)
#include "asserts.isfalse.typ"
#pagebreak(weak: true)
#include "asserts.istrue.typ"
#pagebreak(weak: true)
#include "asserts.length.typ"
#pagebreak(weak: true)
#include "asserts.lessOrEqual.typ"
#pagebreak(weak: true)
#include "asserts.lessThan.typ"
#pagebreak(weak: true)
#include "asserts.match.typ"
#pagebreak(weak: true)
#include "asserts.matchesAll.typ"
#pagebreak(weak: true)
#include "asserts.matchesAny.typ"
#pagebreak(weak: true)
#include "asserts.matrix.typ"
#pagebreak(weak: true)
#include "asserts.ndims.typ"
#pagebreak(weak: true)
#include "asserts.noError.typ"
#pagebreak(weak: true)
#include "asserts.nonNan.typ"
#pagebreak(weak: true)
#include "asserts.notApprox.typ"
#pagebreak(weak: true)
#include "asserts.notEqual.typ"
#pagebreak(weak: true)
#include "asserts.notempty.typ"
#pagebreak(weak: true)
#include "asserts.numel.typ"
#pagebreak(weak: true)
#include "asserts.real.typ"
#pagebreak(weak: true)
#include "asserts.rowVector.typ"
#pagebreak(weak: true)
#include "asserts.rows.typ"
#pagebreak(weak: true)
#include "asserts.sameSize.typ"
#pagebreak(weak: true)
#include "asserts.satisfies.typ"
#pagebreak(weak: true)
#include "asserts.scalar.typ"
#pagebreak(weak: true)
#include "asserts.size.typ"
#pagebreak(weak: true)
#include "asserts.squareMatrix.typ"
#pagebreak(weak: true)
#include "asserts.startsWith.typ"
#pagebreak(weak: true)
#include "asserts.throws.typ"
#pagebreak(weak: true)
#include "asserts.type.typ"
#pagebreak(weak: true)
#include "asserts.vector.typ"
#pagebreak(weak: true)
#include "asserts.warning.typ"
#pagebreak(weak: true)
#include "asserts.warningFree.typ"
]
