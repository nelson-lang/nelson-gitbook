#import "nelson_help.typ": *

= Validators

The Validators module provides tools for enforcing constraints and verifying input values in Nelson.

 It supports checking data types, numerical properties, matrix and vector dimensions, text validity, file and folder existence, and logical or numeric conditions.

 This module ensures robust input validation, helping to prevent errors, enforce correctness, and improve the reliability of scripts and functions.

== Functions

- #nlink(<validators:inputParser>)[inputParser]: Parses and validates function inputs.
- #nlink(<validators:mustBeA>)[mustBeA]: Checks that input value comes from one of specified classes.
- #nlink(<validators:mustBeBetween>)[mustBeBetween]: Validate that all elements are within a specified range.
- #nlink(<validators:mustBeColumn>)[mustBeColumn]: Checks that value is a column vector or raise an error.
- #nlink(<validators:mustBeFile>)[mustBeFile]: Checks that input path refers to file.
- #nlink(<validators:mustBeFinite>)[mustBeFinite]: Checks that value is finite or raise an error.
- #nlink(<validators:mustBeFloat>)[mustBeFloat]: Checks that value is floating-point or raise an error.
- #nlink(<validators:mustBeFolder>)[mustBeFolder]: Checks that input path refers to folder.
- #nlink(<validators:mustBeGreaterThan>)[mustBeGreaterThan]: Checks that value is greater than another value or issue error.
- #nlink(<validators:mustBeGreaterThanOrEqual>)[mustBeGreaterThanOrEqual]: Checks that value is greater than or equal to another value or issue error.
- #nlink(<validators:mustBeInRange>)[mustBeInRange]: Checks that value is in the specified range.
- #nlink(<validators:mustBeInteger>)[mustBeInteger]: Checks that value is integer or raise an error.
- #nlink(<validators:mustBeLessThan>)[mustBeLessThan]: Checks that value is less than another value or issue error.
- #nlink(<validators:mustBeLessThanOrEqual>)[mustBeLessThanOrEqual]: Checks that value is less than or equal to another value or issue error.
- #nlink(<validators:mustBeLogical>)[mustBeLogical]: Checks that value is logical or raise an error.
- #nlink(<validators:mustBeLogicalScalar>)[mustBeLogicalScalar]: Checks that value is logical scalar or raise an error.
- #nlink(<validators:mustBeMatrix>)[mustBeMatrix]: Checks that value is a matrix or raise an error.
- #nlink(<validators:mustBeMember>)[mustBeMember]: Checks that value is member of specified array or issue error.
- #nlink(<validators:mustBeNegative>)[mustBeNegative]: Checks that value is negative or raise an error.
- #nlink(<validators:mustBeNonNan>)[mustBeNonNan]: Checks that value is not NaN.
- #nlink(<validators:mustBeNonSparse>)[mustBeNonSparse]: Checks that value is not sparse.
- #nlink(<validators:mustBeNonZero>)[mustBeNonZero]: Checks that value is not zero.
- #nlink(<validators:mustBeNonempty>)[mustBeNonempty]: Checks that value is nonempty or raise an error.
- #nlink(<validators:mustBeNonmissing>)[mustBeNonmissing]: Checks that value is not missing.
- #nlink(<validators:mustBeNonnegative>)[mustBeNonnegative]: Checks that value is nonnegative or raise an error.
- #nlink(<validators:mustBeNonpositive>)[mustBeNonpositive]: Checks that value is non positive or raise an error.
- #nlink(<validators:mustBeNonzeroLengthText>)[mustBeNonzeroLengthText]: Checks that value is text with nonzero length or raise an error.
- #nlink(<validators:mustBeNumeric>)[mustBeNumeric]: Checks that value is numeric or raise an error.
- #nlink(<validators:mustBeNumericOrLogical>)[mustBeNumericOrLogical]: Checks that input is numeric or logical.
- #nlink(<validators:mustBePositive>)[mustBePositive]: Checks that value is positive or raise an error.
- #nlink(<validators:mustBeReal>)[mustBeReal]: Checks that value is real.
- #nlink(<validators:mustBeRow>)[mustBeRow]: Checks that value is a row vector or raise an error.
- #nlink(<validators:mustBeScalar>)[mustBeScalar]: Checks that value is a scalar or raise an error.
- #nlink(<validators:mustBeScalarOrEmpty>)[mustBeScalarOrEmpty]: Checks that value is scalar or empty or raise an error.
- #nlink(<validators:mustBeSorted>)[mustBeSorted]: Checks that array elements are sorted or raise an error.
- #nlink(<validators:mustBeSparse>)[mustBeSparse]: Checks that value is a sparse matrix or raise an error.
- #nlink(<validators:mustBeText>)[mustBeText]: Checks that value is piece of text or raise an error.
- #nlink(<validators:mustBeTextScalar>)[mustBeTextScalar]: Checks that value is single piece of text or raise an error.
- #nlink(<validators:mustBeUnderlyingType>)[mustBeUnderlyingType]: Validate that value has a specified underlying type.
- #nlink(<validators:mustBeValidVariableName>)[mustBeValidVariableName]: Checks that value is valid variable name or raise an error.
- #nlink(<validators:mustBeVector>)[mustBeVector]: Checks that value is vector or raise an error.
- #nlink(<validators:mustBeVectorOrEmpty>)[mustBeVectorOrEmpty]: Checks that value is a vector or empty, or raise an error.
- #nlink(<validators:validateattributes>)[validateattributes]: Checks that an array has requested classes and attributes.
- #nlink(<validators:validatestring>)[validatestring]: Checks that text matches one allowed value.


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
