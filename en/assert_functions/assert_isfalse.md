

# assert_isfalse

Check that condition is false.

## Syntax

- assert_isfalse(x)
- r = assert_isfalse(x)
- [r, msg] = assert_isfalse(x)
- assert_isfalse(x, err_msg)
- r = assert_isfalse(x, err_msg)
- [r, msg] = assert_isfalse(x, err_msg)

## Input argument

 - x - a logical value
 - err_msg - a string, the error message to be printed in case of failure (optional).

## Output argument

 - res - a logical value
 - msg - a string value, the error message. If x == false, then msg == ''. If x == true, then msg contains the error message.

## Description

Raises an error if x is true. Raises an error if x is not a logical.

## Examples

```Nelson
assert_isfalse(3 ~= 4)
```
```Nelson
assert_isfalse(3 == 4)
```
```Nelson
r = assert_isfalse(false)
```
```Nelson
[r, msg] = assert_isfalse(false)
```
```Nelson
[r, msg] = assert_isfalse(3 == 3, 'your error message.')
```

## See also

[assert_istrue](assert_istrue.md), [assert_checkerror](assert_checkerror.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



