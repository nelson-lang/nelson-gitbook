# Validateurs

Le module Validators fournit des outils pour appliquer des contraintes et vérifier les valeurs d'entrée dans Nelson.

Il prend en charge la vérification des types de données, des propriétés numériques, des dimensions des matrices et des vecteurs, la validité des textes, l'existence de fichiers et de dossiers, ainsi que les conditions logiques ou numériques.

Ce module assure une validation d'entrée robuste, contribuant à prévenir les erreurs, garantir l'exactitude et améliorer la fiabilité des scripts et fonctions.

## Functions

- [mustBeA](mustBeA.md) - Vérifie que la valeur d'entrée appartient à l'une des classes spécifiées.
- [mustBeColumn](mustBeColumn.md) - Vérifie que la valeur est un vecteur colonne ou renvoie une erreur.
- [mustBeFile](mustBeFile.md) - Vérifie que le chemin d'entrée correspond à un fichier.
- [mustBeFinite](mustBeFinite.md) - Vérifie que la valeur est finie ou renvoie une erreur.
- [mustBeFloat](mustBeFloat.md) - Vérifie que la valeur est en virgule flottante ou renvoie une erreur.
- [mustBeFolder](mustBeFolder.md) - Vérifie que le chemin d'entrée correspond à un dossier.
- [mustBeGreaterThan](mustBeGreaterThan.md) - Vérifie que la valeur est supérieure à une autre valeur ou signale une erreur.
- [mustBeGreaterThanOrEqual](mustBeGreaterThanOrEqual.md) - Vérifie que la valeur est supérieure ou égale à une autre valeur ou signale une erreur.
- [mustBeInRange](mustBeInRange.md) - Vérifie que la valeur se situe dans la plage spécifiée.
- [mustBeInteger](mustBeInteger.md) - Vérifie que la valeur est entière ou renvoie une erreur.
- [mustBeLessThan](mustBeLessThan.md) - Vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.
- [mustBeLessThanOrEqual](mustBeLessThanOrEqual.md) - Checks that value is less than or equal to another value or issue error.
- [mustBeLogical](mustBeLogical.md) - Vérifie que la valeur est logique ou renvoie une erreur.
- [mustBeLogicalScalar](mustBeLogicalScalar.md) - Vérifie que la valeur est un scalaire logique ou renvoie une erreur.
- [mustBeMatrix](mustBeMatrix.md) - Vérifie que la valeur est une matrice ou renvoie une erreur.
- [mustBeMember](mustBeMember.md) - Vérifie que la valeur est membre du tableau spécifié ou signale une erreur.
- [mustBeNegative](mustBeNegative.md) - Vérifie que la valeur est négative ou renvoie une erreur.
- [mustBeNonNan](mustBeNonNan.md) - Vérifie que la valeur n'est pas NaN.
- [mustBeNonSparse](mustBeNonSparse.md) - Vérifie que la valeur n'est pas creuse (sparse).
- [mustBeNonZero](mustBeNonZero.md) - Vérifie que la valeur n'est pas zéro.
- [mustBeNonempty](mustBeNonempty.md) - Vérifie que la valeur n'est pas vide ou renvoie une erreur.
- [mustBeNonmissing](mustBeNonmissing.md) - Vérifie que la valeur n'est pas manquante ou renvoie une erreur.
- [mustBeNonnegative](mustBeNonnegative.md) - Checks that value is nonnegative or raise an error.
- [mustBeNonpositive](mustBeNonpositive.md) - Vérifie que la valeur est non positive ou renvoie une erreur.
- [mustBeNonzeroLengthText](mustBeNonzeroLengthText.md) - Vérifie que la valeur est un texte de longueur non nulle ou renvoie une erreur.
- [mustBeNumeric](mustBeNumeric.md) - Vérifie que la valeur est numérique ou renvoie une erreur.
- [mustBeNumericOrLogical](mustBeNumericOrLogical.md) - Vérifie que la valeur est numérique ou logique ou renvoie une erreur.
- [mustBePositive](mustBePositive.md) - Vérifie que la valeur est positive ou renvoie une erreur.
- [mustBeReal](mustBeReal.md) - Vérifie que la valeur est réelle.
- [mustBeRow](mustBeRow.md) - Vérifie que la valeur est un vecteur ligne ou renvoie une erreur.
- [mustBeScalarOrEmpty](mustBeScalarOrEmpty.md) - Vérifie que la valeur est scalaire ou vide, sinon renvoie une erreur.
- [mustBeSparse](mustBeSparse.md) - Vérifie que la valeur est une matrice creuse (sparse) ou renvoie une erreur.
- [mustBeText](mustBeText.md) - Vérifie que la valeur est un texte ou renvoie une erreur.
- [mustBeTextScalar](mustBeTextScalar.md) - Vérifie que la valeur est un seul texte (scalaire) ou renvoie une erreur.
- [mustBeValidVariableName](mustBeValidVariableName.md) - Vérifie que la valeur est un nom de variable valide sinon renvoie une erreur.
- [mustBeVector](mustBeVector.md) - Vérifie que la valeur est un vecteur ou renvoie une erreur.
