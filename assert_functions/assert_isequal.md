



assert_isequal


assert_isequal

Check that computed and expected values are equal.

## Syntax

- assert_isequal(computed, expected)
- res = assert_isequal(computed, expected)
- [res, msg] = assert_isequal(computed, expected)

## Input argument

 - computed - a value
 - expected - a value

## Output argument

 - res - a logical value
 - msg - a string value, the error message. If res == true, then errormsg == ''. If res == false, then msg contains the error message.

## Description

<b>assert_isequal</b> raises an error if computed value is not equal to expected value (same type, same dimensions, same values comparaisons).

Used function(s)

isequaln

Bibliography

"Automated Software Testing for Matlab", Steven Eddins, 2009

## Examples

```Nelson
A = eye(3, 3);
assert_isequal(A, A)
```
```Nelson
A = eye(3, 3);
B = single(A);
assert_isequal(A, B)
```
```Nelson
A = NaN;
B = A;
assert_isequal(A, B)
```

## See also

isequaln.md isequaln.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



