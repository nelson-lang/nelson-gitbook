# Assertion functions


    
The assert_functions module provides assertion tools for unit tests, runtime contracts and diagnostic checks.

    
All assertions share the same contract: with no output they raise an error on failure; with outputs they return **[res, msg]**.

    
The canonical API uses qualified assertion names, for example **asserts.isequal**, **asserts.warning** and **asserts.satisfies**.

  

## Functions

- [assert](assert.md) - Check that a condition is true.
- [assert_checkerror](assert_checkerror.md) - Historical name for asserts.checkerror.
- [assert_isapprox](assert_isapprox.md) - Historical name for asserts.isapprox.
- [assert_isequal](assert_isequal.md) - Historical name for asserts.isequal.
- [assert_isfalse](assert_isfalse.md) - Historical name for asserts.isfalse.
- [assert_istrue](assert_istrue.md) - Historical name for asserts.istrue.
- [asserts.allfalse](asserts.allfalse.md) - Check that every logical entry is false.
- [asserts.alltrue](asserts.alltrue.md) - Check that every logical entry is true.
- [asserts.checkerror](asserts.checkerror.md) - Check that a command raises an expected error.
- [asserts.class](asserts.class.md) - Check that a value has the expected class.
- [asserts.columnVector](asserts.columnVector.md) - Check that a value is a column vector.
- [asserts.columns](asserts.columns.md) - Check the column count.
- [asserts.contains](asserts.contains.md) - Check that text contains a pattern.
- [asserts.containsAll](asserts.containsAll.md) - Check that text contains all expected patterns.
- [asserts.containsAny](asserts.containsAny.md) - Check that text contains at least one expected pattern.
- [asserts.diff](asserts.diff.md) - Return equality diagnostics without throwing.
- [asserts.empty](asserts.empty.md) - Check that a value is empty.
- [asserts.endsWith](asserts.endsWith.md) - Check that text ends with a suffix.
- [asserts.fail](asserts.fail.md) - Force an assertion failure.
- [asserts.fields](asserts.fields.md) - Check the exact set of structure fields.
- [asserts.finite](asserts.finite.md) - Check that every numeric entry is finite.
- [asserts.greaterOrEqual](asserts.greaterOrEqual.md) - Check that every value is greater than or equal to a limit.
- [asserts.greaterThan](asserts.greaterThan.md) - Check that every value is strictly greater than a limit.
- [asserts.hasField](asserts.hasField.md) - Check that a structure has a field.
- [asserts.hasFields](asserts.hasFields.md) - Check that a structure has all expected fields.
- [asserts.inRange](asserts.inRange.md) - Check that every value is inside an inclusive range.
- [asserts.isapprox](asserts.isapprox.md) - Check that computed and expected numeric values are approximately equal.
- [asserts.isequal](asserts.isequal.md) - Check that computed and expected values are equal.
- [asserts.isfalse](asserts.isfalse.md) - Check that a logical condition is false.
- [asserts.istrue](asserts.istrue.md) - Check that a logical condition is true.
- [asserts.length](asserts.length.md) - Check the length of a value.
- [asserts.lessOrEqual](asserts.lessOrEqual.md) - Check that every value is less than or equal to a limit.
- [asserts.lessThan](asserts.lessThan.md) - Check that every value is strictly less than a limit.
- [asserts.match](asserts.match.md) - Check that text matches a regular expression.
- [asserts.matchesAll](asserts.matchesAll.md) - Check that text matches all regular expressions.
- [asserts.matchesAny](asserts.matchesAny.md) - Check that text matches at least one regular expression.
- [asserts.matrix](asserts.matrix.md) - Check that a value is two-dimensional.
- [asserts.ndims](asserts.ndims.md) - Check the number of dimensions.
- [asserts.noError](asserts.noError.md) - Check that a command completes without error.
- [asserts.nonNan](asserts.nonNan.md) - Check that no numeric entry is NaN.
- [asserts.notApprox](asserts.notApprox.md) - Check that two numeric values are not approximately equal.
- [asserts.notEqual](asserts.notEqual.md) - Check that two values are not equal.
- [asserts.notempty](asserts.notempty.md) - Check that a value is not empty.
- [asserts.numel](asserts.numel.md) - Check the number of elements of a value.
- [asserts.real](asserts.real.md) - Check that a value is real.
- [asserts.rowVector](asserts.rowVector.md) - Check that a value is a row vector.
- [asserts.rows](asserts.rows.md) - Check the row count.
- [asserts.sameSize](asserts.sameSize.md) - Check that two values have the same size.
- [asserts.satisfies](asserts.satisfies.md) - Check a value with a custom predicate.
- [asserts.scalar](asserts.scalar.md) - Check that a value is scalar.
- [asserts.size](asserts.size.md) - Check that a value has the expected dimensions.
- [asserts.squareMatrix](asserts.squareMatrix.md) - Check that a value is a square matrix.
- [asserts.startsWith](asserts.startsWith.md) - Check that text starts with a prefix.
- [asserts.throws](asserts.throws.md) - Check that a command throws an error containing expected text.
- [asserts.type](asserts.type.md) - Check that a value has one of the expected classes.
- [asserts.vector](asserts.vector.md) - Check that a value is a vector.
- [asserts.warning](asserts.warning.md) - Check that a command emits the expected warning.
- [asserts.warningFree](asserts.warningFree.md) - Check that a command completes without warning.

