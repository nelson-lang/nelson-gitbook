# assert_istrue

Check that condition is true.

## Syntax

- assert_istrue(x)
- r = assert_istrue(x)
- [r, msg] = assert_istrue(x)
- assert_istrue(x, err_msg)
- r = assert_istrue(x, err_msg)
- [r, msg] = assert_istrue(x, err_msg)

## Input argument

- x - a logical value
- err_msg - a string, the error message to be printed in case of failure (optional).

## Output argument

- res - a logical value
- msg - a string value, the error message. If x == true, then msg == ''. If x == false, then msg contains the error message.

## Description

Raises an error if x is false. Raises an error if x is not a logical.

## Examples

```matlab
assert_istrue(3 == 3)
```

```matlab
assert_istrue(3 == 4)
```

```matlab
r = assert_istrue(false)
```

```matlab
[r, msg] = assert_istrue(false)
```

```matlab
[r, msg] = assert_istrue(3 == 4, 'your error message.')
```

## See also

[assert_isfalse](assert_isfalse.md), [assert_checkerror](assert_checkerror.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
