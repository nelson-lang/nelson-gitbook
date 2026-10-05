#import "nelson_help.typ": *

= Validateurs

Le module Validators fournit des outils pour appliquer des contraintes et vérifier les valeurs d'entrée dans Nelson.

 Il prend en charge la vérification des types de données, des propriétés numériques, des dimensions des matrices et des vecteurs, la validité des textes, l'existence de fichiers et de dossiers, ainsi que les conditions logiques ou numériques.

 Ce module assure une validation d'entrée robuste, contribuant à prévenir les erreurs, garantir l'exactitude et améliorer la fiabilité des scripts et fonctions.

== Functions

- #nlink(<validators:inputParser>)[inputParser]: Analyse et verifie les entrees de fonction.
- #nlink(<validators:mustBeA>)[mustBeA]: Vérifie que la valeur d'entrée appartient à l'une des classes spécifiées.
- #nlink(<validators:mustBeBetween>)[mustBeBetween]: Valide que tous les elements sont compris dans une plage specifiee.
- #nlink(<validators:mustBeColumn>)[mustBeColumn]: Vérifie que la valeur est un vecteur colonne ou renvoie une erreur.
- #nlink(<validators:mustBeFile>)[mustBeFile]: Vérifie que le chemin d'entrée correspond à un fichier.
- #nlink(<validators:mustBeFinite>)[mustBeFinite]: Vérifie que la valeur est finie ou renvoie une erreur.
- #nlink(<validators:mustBeFloat>)[mustBeFloat]: Vérifie que la valeur est en virgule flottante ou renvoie une erreur.
- #nlink(<validators:mustBeFolder>)[mustBeFolder]: Vérifie que le chemin d'entrée correspond à un dossier.
- #nlink(<validators:mustBeGreaterThan>)[mustBeGreaterThan]: Vérifie que la valeur est supérieure à une autre valeur ou signale une erreur.
- #nlink(<validators:mustBeGreaterThanOrEqual>)[mustBeGreaterThanOrEqual]: Vérifie que la valeur est supérieure ou égale à une autre valeur ou signale une erreur.
- #nlink(<validators:mustBeInRange>)[mustBeInRange]: Vérifie que la valeur se situe dans la plage spécifiée.
- #nlink(<validators:mustBeInteger>)[mustBeInteger]: Vérifie que la valeur est entière ou renvoie une erreur.
- #nlink(<validators:mustBeLessThan>)[mustBeLessThan]: Vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.
- #nlink(<validators:mustBeLessThanOrEqual>)[mustBeLessThanOrEqual]: Vérifie qu'une valeur est inférieure ou égale à une autre valeur, sinon émet une erreur.
- #nlink(<validators:mustBeLogical>)[mustBeLogical]: Vérifie que la valeur est logique ou renvoie une erreur.
- #nlink(<validators:mustBeLogicalScalar>)[mustBeLogicalScalar]: Vérifie que la valeur est un scalaire logique ou renvoie une erreur.
- #nlink(<validators:mustBeMatrix>)[mustBeMatrix]: Vérifie que la valeur est une matrice ou renvoie une erreur.
- #nlink(<validators:mustBeMember>)[mustBeMember]: Vérifie que la valeur est membre du tableau spécifié ou signale une erreur.
- #nlink(<validators:mustBeNegative>)[mustBeNegative]: Vérifie que la valeur est négative ou renvoie une erreur.
- #nlink(<validators:mustBeNonNan>)[mustBeNonNan]: Vérifie que la valeur n'est pas NaN.
- #nlink(<validators:mustBeNonSparse>)[mustBeNonSparse]: Vérifie que la valeur n'est pas creuse (sparse).
- #nlink(<validators:mustBeNonZero>)[mustBeNonZero]: Vérifie que la valeur n'est pas zéro.
- #nlink(<validators:mustBeNonempty>)[mustBeNonempty]: Vérifie que la valeur n'est pas vide ou renvoie une erreur.
- #nlink(<validators:mustBeNonmissing>)[mustBeNonmissing]: Vérifie que la valeur n'est pas manquante ou renvoie une erreur.
- #nlink(<validators:mustBeNonnegative>)[mustBeNonnegative]: Vérifie qu'une valeur est non négative, sinon émet une erreur.
- #nlink(<validators:mustBeNonpositive>)[mustBeNonpositive]: Vérifie que la valeur est non positive ou renvoie une erreur.
- #nlink(<validators:mustBeNonzeroLengthText>)[mustBeNonzeroLengthText]: Vérifie que la valeur est un texte de longueur non nulle ou renvoie une erreur.
- #nlink(<validators:mustBeNumeric>)[mustBeNumeric]: Vérifie que la valeur est numérique ou renvoie une erreur.
- #nlink(<validators:mustBeNumericOrLogical>)[mustBeNumericOrLogical]: Vérifie que la valeur est numérique ou logique ou renvoie une erreur.
- #nlink(<validators:mustBePositive>)[mustBePositive]: Vérifie que la valeur est positive ou renvoie une erreur.
- #nlink(<validators:mustBeReal>)[mustBeReal]: Vérifie que la valeur est réelle.
- #nlink(<validators:mustBeRow>)[mustBeRow]: Vérifie que la valeur est un vecteur ligne ou renvoie une erreur.
- #nlink(<validators:mustBeScalar>)[mustBeScalar]: Verifie que la valeur est un scalaire, sinon renvoie une erreur.
- #nlink(<validators:mustBeScalarOrEmpty>)[mustBeScalarOrEmpty]: Vérifie que la valeur est scalaire ou vide, sinon renvoie une erreur.
- #nlink(<validators:mustBeSorted>)[mustBeSorted]: Vérifie que les éléments d'un tableau sont triés ou signale une erreur.
- #nlink(<validators:mustBeSparse>)[mustBeSparse]: Vérifie que la valeur est une matrice creuse (sparse) ou renvoie une erreur.
- #nlink(<validators:mustBeText>)[mustBeText]: Vérifie que la valeur est un texte ou renvoie une erreur.
- #nlink(<validators:mustBeTextScalar>)[mustBeTextScalar]: Vérifie que la valeur est un seul texte (scalaire) ou renvoie une erreur.
- #nlink(<validators:mustBeUnderlyingType>)[mustBeUnderlyingType]: Valide que la valeur a un type sous-jacent spécifié
- #nlink(<validators:mustBeValidVariableName>)[mustBeValidVariableName]: Vérifie que la valeur est un nom de variable valide sinon renvoie une erreur.
- #nlink(<validators:mustBeVector>)[mustBeVector]: Vérifie que la valeur est un vecteur ou renvoie une erreur.
- #nlink(<validators:mustBeVectorOrEmpty>)[mustBeVectorOrEmpty]: Verifie que la valeur est un vecteur ou vide, sinon renvoie une erreur.
- #nlink(<validators:validateattributes>)[validateattributes]: Verifie les classes et attributs demandes pour un tableau.
- #nlink(<validators:validatestring>)[validatestring]: Verifie qu'un texte correspond a une valeur autorisee.


#nested[
#pagebreak(weak: true)
#include "inputParser.typ"
#pagebreak(weak: true)
#include "mustBeA.typ"
#pagebreak(weak: true)
#include "mustBeBetween.typ"
#pagebreak(weak: true)
#include "mustBeColumn.typ"
#pagebreak(weak: true)
#include "mustBeFile.typ"
#pagebreak(weak: true)
#include "mustBeFinite.typ"
#pagebreak(weak: true)
#include "mustBeFloat.typ"
#pagebreak(weak: true)
#include "mustBeFolder.typ"
#pagebreak(weak: true)
#include "mustBeGreaterThan.typ"
#pagebreak(weak: true)
#include "mustBeGreaterThanOrEqual.typ"
#pagebreak(weak: true)
#include "mustBeInRange.typ"
#pagebreak(weak: true)
#include "mustBeInteger.typ"
#pagebreak(weak: true)
#include "mustBeLessThan.typ"
#pagebreak(weak: true)
#include "mustBeLessThanOrEqual.typ"
#pagebreak(weak: true)
#include "mustBeLogical.typ"
#pagebreak(weak: true)
#include "mustBeLogicalScalar.typ"
#pagebreak(weak: true)
#include "mustBeMatrix.typ"
#pagebreak(weak: true)
#include "mustBeMember.typ"
#pagebreak(weak: true)
#include "mustBeNegative.typ"
#pagebreak(weak: true)
#include "mustBeNonNan.typ"
#pagebreak(weak: true)
#include "mustBeNonSparse.typ"
#pagebreak(weak: true)
#include "mustBeNonZero.typ"
#pagebreak(weak: true)
#include "mustBeNonempty.typ"
#pagebreak(weak: true)
#include "mustBeNonmissing.typ"
#pagebreak(weak: true)
#include "mustBeNonnegative.typ"
#pagebreak(weak: true)
#include "mustBeNonpositive.typ"
#pagebreak(weak: true)
#include "mustBeNonzeroLengthText.typ"
#pagebreak(weak: true)
#include "mustBeNumeric.typ"
#pagebreak(weak: true)
#include "mustBeNumericOrLogical.typ"
#pagebreak(weak: true)
#include "mustBePositive.typ"
#pagebreak(weak: true)
#include "mustBeReal.typ"
#pagebreak(weak: true)
#include "mustBeRow.typ"
#pagebreak(weak: true)
#include "mustBeScalar.typ"
#pagebreak(weak: true)
#include "mustBeScalarOrEmpty.typ"
#pagebreak(weak: true)
#include "mustBeSorted.typ"
#pagebreak(weak: true)
#include "mustBeSparse.typ"
#pagebreak(weak: true)
#include "mustBeText.typ"
#pagebreak(weak: true)
#include "mustBeTextScalar.typ"
#pagebreak(weak: true)
#include "mustBeUnderlyingType.typ"
#pagebreak(weak: true)
#include "mustBeValidVariableName.typ"
#pagebreak(weak: true)
#include "mustBeVector.typ"
#pagebreak(weak: true)
#include "mustBeVectorOrEmpty.typ"
#pagebreak(weak: true)
#include "validateattributes.typ"
#pagebreak(weak: true)
#include "validatestring.typ"
]
