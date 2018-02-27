



assert


assert

Check that condition is true.

## Syntax

- assert(x)
- r = assert(x)
- [r, msg] = assert(x)
- assert(x, err_msg)
- r = assert(x, err_msg)
- [r, msg] = assert(x, err_msg)

## Input argument

 - x - a logical value
 - err_msg - a string, the error message to be printed in case of failure (optional).

## Output argument

 - res - a logical value
 - msg - a string value, the error message. If x == true, then msg == ''. If x == false, then msg contains the error message.

## Description

Raises an error if x is false. Raises an error if x is not a logical.

## Example

```Nelson
assert(4 == 3, _('error for comparaison.'))
```

## See also

assert_istrue.md assert_istrue, assert_isfalse.md assert_isfalse.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



