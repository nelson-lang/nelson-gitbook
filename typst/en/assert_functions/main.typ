#import "nelson_help.typ": *

= Assertion functions

The assert\_functions module provides assertion tools for unit tests, runtime contracts and diagnostic checks.

 All assertions share the same contract: with no output they raise an error on failure; with outputs they return #strong[\[res, msg\]];.

 The canonical API uses qualified assertion names, for example #strong[asserts.isequal];, #strong[asserts.warning]; and #strong[asserts.satisfies];.

== Functions

- #nlink(<assert_functions:assert>)[assert]: Check that a condition is true.
- #nlink(<assert_functions:assert_checkerror>)[assert\_checkerror]: Historical name for asserts.checkerror.
- #nlink(<assert_functions:assert_isapprox>)[assert\_isapprox]: Historical name for asserts.isapprox.
- #nlink(<assert_functions:assert_isequal>)[assert\_isequal]: Historical name for asserts.isequal.
- #nlink(<assert_functions:assert_isfalse>)[assert\_isfalse]: Historical name for asserts.isfalse.
- #nlink(<assert_functions:assert_istrue>)[assert\_istrue]: Historical name for asserts.istrue.
- #nlink(<assert_functions:asserts.allfalse>)[asserts.allfalse]: Check that every logical entry is false.
- #nlink(<assert_functions:asserts.alltrue>)[asserts.alltrue]: Check that every logical entry is true.
- #nlink(<assert_functions:asserts.checkerror>)[asserts.checkerror]: Check that a command raises an expected error.
- #nlink(<assert_functions:asserts.class>)[asserts.class]: Check that a value has the expected class.
- #nlink(<assert_functions:asserts.columnVector>)[asserts.columnVector]: Check that a value is a column vector.
- #nlink(<assert_functions:asserts.columns>)[asserts.columns]: Check the column count.
- #nlink(<assert_functions:asserts.contains>)[asserts.contains]: Check that text contains a pattern.
- #nlink(<assert_functions:asserts.containsAll>)[asserts.containsAll]: Check that text contains all expected patterns.
- #nlink(<assert_functions:asserts.containsAny>)[asserts.containsAny]: Check that text contains at least one expected pattern.
- #nlink(<assert_functions:asserts.diff>)[asserts.diff]: Return equality diagnostics without throwing.
- #nlink(<assert_functions:asserts.empty>)[asserts.empty]: Check that a value is empty.
- #nlink(<assert_functions:asserts.endsWith>)[asserts.endsWith]: Check that text ends with a suffix.
- #nlink(<assert_functions:asserts.fail>)[asserts.fail]: Force an assertion failure.
- #nlink(<assert_functions:asserts.fields>)[asserts.fields]: Check the exact set of structure fields.
- #nlink(<assert_functions:asserts.finite>)[asserts.finite]: Check that every numeric entry is finite.
- #nlink(<assert_functions:asserts.greaterOrEqual>)[asserts.greaterOrEqual]: Check that every value is greater than or equal to a limit.
- #nlink(<assert_functions:asserts.greaterThan>)[asserts.greaterThan]: Check that every value is strictly greater than a limit.
- #nlink(<assert_functions:asserts.hasField>)[asserts.hasField]: Check that a structure has a field.
- #nlink(<assert_functions:asserts.hasFields>)[asserts.hasFields]: Check that a structure has all expected fields.
- #nlink(<assert_functions:asserts.inRange>)[asserts.inRange]: Check that every value is inside an inclusive range.
- #nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox]: Check that computed and expected numeric values are approximately equal.
- #nlink(<assert_functions:asserts.isequal>)[asserts.isequal]: Check that computed and expected values are equal.
- #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse]: Check that a logical condition is false.
- #nlink(<assert_functions:asserts.istrue>)[asserts.istrue]: Check that a logical condition is true.
- #nlink(<assert_functions:asserts.length>)[asserts.length]: Check the length of a value.
- #nlink(<assert_functions:asserts.lessOrEqual>)[asserts.lessOrEqual]: Check that every value is less than or equal to a limit.
- #nlink(<assert_functions:asserts.lessThan>)[asserts.lessThan]: Check that every value is strictly less than a limit.
- #nlink(<assert_functions:asserts.match>)[asserts.match]: Check that text matches a regular expression.
- #nlink(<assert_functions:asserts.matchesAll>)[asserts.matchesAll]: Check that text matches all regular expressions.
- #nlink(<assert_functions:asserts.matchesAny>)[asserts.matchesAny]: Check that text matches at least one regular expression.
- #nlink(<assert_functions:asserts.matrix>)[asserts.matrix]: Check that a value is two-dimensional.
- #nlink(<assert_functions:asserts.ndims>)[asserts.ndims]: Check the number of dimensions.
- #nlink(<assert_functions:asserts.noError>)[asserts.noError]: Check that a command completes without error.
- #nlink(<assert_functions:asserts.nonNan>)[asserts.nonNan]: Check that no numeric entry is NaN.
- #nlink(<assert_functions:asserts.notApprox>)[asserts.notApprox]: Check that two numeric values are not approximately equal.
- #nlink(<assert_functions:asserts.notEqual>)[asserts.notEqual]: Check that two values are not equal.
- #nlink(<assert_functions:asserts.notempty>)[asserts.notempty]: Check that a value is not empty.
- #nlink(<assert_functions:asserts.numel>)[asserts.numel]: Check the number of elements of a value.
- #nlink(<assert_functions:asserts.real>)[asserts.real]: Check that a value is real.
- #nlink(<assert_functions:asserts.rowVector>)[asserts.rowVector]: Check that a value is a row vector.
- #nlink(<assert_functions:asserts.rows>)[asserts.rows]: Check the row count.
- #nlink(<assert_functions:asserts.sameSize>)[asserts.sameSize]: Check that two values have the same size.
- #nlink(<assert_functions:asserts.satisfies>)[asserts.satisfies]: Check a value with a custom predicate.
- #nlink(<assert_functions:asserts.scalar>)[asserts.scalar]: Check that a value is scalar.
- #nlink(<assert_functions:asserts.size>)[asserts.size]: Check that a value has the expected dimensions.
- #nlink(<assert_functions:asserts.squareMatrix>)[asserts.squareMatrix]: Check that a value is a square matrix.
- #nlink(<assert_functions:asserts.startsWith>)[asserts.startsWith]: Check that text starts with a prefix.
- #nlink(<assert_functions:asserts.throws>)[asserts.throws]: Check that a command throws an error containing expected text.
- #nlink(<assert_functions:asserts.type>)[asserts.type]: Check that a value has one of the expected classes.
- #nlink(<assert_functions:asserts.vector>)[asserts.vector]: Check that a value is a vector.
- #nlink(<assert_functions:asserts.warning>)[asserts.warning]: Check that a command emits the expected warning.
- #nlink(<assert_functions:asserts.warningFree>)[asserts.warningFree]: Check that a command completes without warning.


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
