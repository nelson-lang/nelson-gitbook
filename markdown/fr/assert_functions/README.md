# Fonctions d'assertion

Le module assert_functions fournit des assertions pour les tests unitaires, les contrats d'execution et les diagnostics.

Toutes les assertions partagent le meme contrat : sans sortie elles levent une erreur en cas d'echec ; avec sorties elles retournent **[res, msg]**.

L'API canonique utilise des noms d'assertion qualifies, par exemple **asserts.isequal**, **asserts.warning** et **asserts.satisfies**.

## Functions

- [assert](assert.md) - Verifie qu'une condition est vraie.
- [assert_checkerror](assert_checkerror.md) - Nom historique de asserts.checkerror.
- [assert_isapprox](assert_isapprox.md) - Nom historique de asserts.isapprox.
- [assert_isequal](assert_isequal.md) - Nom historique de asserts.isequal.
- [assert_isfalse](assert_isfalse.md) - Nom historique de asserts.isfalse.
- [assert_istrue](assert_istrue.md) - Nom historique de asserts.istrue.
- [asserts.allfalse](asserts.allfalse.md) - Verifie que chaque entree logique vaut false.
- [asserts.alltrue](asserts.alltrue.md) - Verifie que chaque entree logique vaut true.
- [asserts.checkerror](asserts.checkerror.md) - Verifie qu'une commande leve une erreur attendue.
- [asserts.class](asserts.class.md) - Verifie qu'une valeur a la classe attendue.
- [asserts.columnVector](asserts.columnVector.md) - Verifie qu'une valeur est un vecteur colonne.
- [asserts.columns](asserts.columns.md) - Verifie le nombre de colonnes.
- [asserts.contains](asserts.contains.md) - Verifie qu'un texte contient un motif.
- [asserts.containsAll](asserts.containsAll.md) - Verifie qu'un texte contient tous les motifs attendus.
- [asserts.containsAny](asserts.containsAny.md) - Verifie qu'un texte contient au moins un motif attendu.
- [asserts.diff](asserts.diff.md) - Retourne les diagnostics d'egalite sans lever d'erreur.
- [asserts.empty](asserts.empty.md) - Verifie qu'une valeur est vide.
- [asserts.endsWith](asserts.endsWith.md) - Verifie qu'un texte se termine par un suffixe.
- [asserts.fail](asserts.fail.md) - Force un echec d'assertion.
- [asserts.fields](asserts.fields.md) - Verifie l'ensemble exact des champs d'une structure.
- [asserts.finite](asserts.finite.md) - Verifie que chaque entree numerique est finie.
- [asserts.greaterOrEqual](asserts.greaterOrEqual.md) - Verifie que chaque valeur est superieure ou egale a une limite.
- [asserts.greaterThan](asserts.greaterThan.md) - Verifie que chaque valeur est strictement superieure a une limite.
- [asserts.hasField](asserts.hasField.md) - Verifie qu'une structure possede un champ.
- [asserts.hasFields](asserts.hasFields.md) - Verifie qu'une structure possede tous les champs attendus.
- [asserts.inRange](asserts.inRange.md) - Verifie que chaque valeur est dans un intervalle inclusif.
- [asserts.isapprox](asserts.isapprox.md) - Verifie que les valeurs numeriques calculee et attendue sont approximativement egales.
- [asserts.isequal](asserts.isequal.md) - Verifie que les valeurs calculee et attendue sont egales.
- [asserts.isfalse](asserts.isfalse.md) - Verifie qu'une condition logique est fausse.
- [asserts.istrue](asserts.istrue.md) - Verifie qu'une condition logique est vraie.
- [asserts.length](asserts.length.md) - Verifie la longueur d'une valeur.
- [asserts.lessOrEqual](asserts.lessOrEqual.md) - Verifie que chaque valeur est inferieure ou egale a une limite.
- [asserts.lessThan](asserts.lessThan.md) - Verifie que chaque valeur est strictement inferieure a une limite.
- [asserts.match](asserts.match.md) - Verifie qu'un texte correspond a une expression reguliere.
- [asserts.matchesAll](asserts.matchesAll.md) - Verifie qu'un texte correspond a toutes les expressions regulieres.
- [asserts.matchesAny](asserts.matchesAny.md) - Verifie qu'un texte correspond a au moins une expression reguliere.
- [asserts.matrix](asserts.matrix.md) - Verifie qu'une valeur est bidimensionnelle.
- [asserts.ndims](asserts.ndims.md) - Verifie le nombre de dimensions.
- [asserts.noError](asserts.noError.md) - Verifie qu'une commande se termine sans erreur.
- [asserts.nonNan](asserts.nonNan.md) - Verifie qu'aucune entree numerique ne vaut NaN.
- [asserts.notApprox](asserts.notApprox.md) - Verifie que deux valeurs numeriques ne sont pas approximativement egales.
- [asserts.notEqual](asserts.notEqual.md) - Verifie que deux valeurs ne sont pas egales.
- [asserts.notempty](asserts.notempty.md) - Verifie qu'une valeur n'est pas vide.
- [asserts.numel](asserts.numel.md) - Verifie le nombre d'elements d'une valeur.
- [asserts.real](asserts.real.md) - Verifie qu'une valeur est reelle.
- [asserts.rowVector](asserts.rowVector.md) - Verifie qu'une valeur est un vecteur ligne.
- [asserts.rows](asserts.rows.md) - Verifie le nombre de lignes.
- [asserts.sameSize](asserts.sameSize.md) - Verifie que deux valeurs ont la meme taille.
- [asserts.satisfies](asserts.satisfies.md) - Verifie une valeur avec un predicat personnalise.
- [asserts.scalar](asserts.scalar.md) - Verifie qu'une valeur est scalaire.
- [asserts.size](asserts.size.md) - Verifie qu'une valeur a les dimensions attendues.
- [asserts.squareMatrix](asserts.squareMatrix.md) - Verifie qu'une valeur est une matrice carree.
- [asserts.startsWith](asserts.startsWith.md) - Verifie qu'un texte commence par un prefixe.
- [asserts.throws](asserts.throws.md) - Verifie qu'une commande genere une erreur contenant le texte attendu.
- [asserts.type](asserts.type.md) - Verifie qu'une valeur a l'une des classes attendues.
- [asserts.vector](asserts.vector.md) - Verifie qu'une valeur est un vecteur.
- [asserts.warning](asserts.warning.md) - Verifie qu'une commande emet l'avertissement attendu.
- [asserts.warningFree](asserts.warningFree.md) - Verifie qu'une commande se termine sans avertissement.
