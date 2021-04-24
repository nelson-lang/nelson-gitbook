

# assert_checkerror

Check that an command raises the expected error.

## Syntax

- assert_checkerror(command, expected_error_message)
- r = assert_checkerror(command, expected_error_message)
- [r, msg] = assert_checkerror(command, expected_error_message)
- assert_checkerror(command, expected_error_message, expected_error_identifier)
- r = assert_checkerror(command, expected_error_message, expected_error_identifier)
- [r, msg] = assert_checkerror(command, expected_error_message, expected_error_identifier)

## Input argument

 - command - a string value
 - expected_error_message - a string, the expected error message.
 - expected_error_identifier - a string, the expected error identifier.

## Output argument

 - res - a logical value
 - msg - a string value, the error message. If res == true, then errormsg == ''. If res == false, then msg contains the error message.

## Description

If the command does not raise the expected error message, then assert_checkerror raises an error.

## Examples

```matlab
assert_checkerror('cos', _('Wrong number of input arguments.'));
```
```matlab
assert_checkerror('cos', _('Wrong error message.'));
```
```matlab
assert_checkerror('mustBeFinite(NaN)', _('Value must be finite.'), 'Nelson:validators:mustBeFinite')
```

## See also

[assert_istrue](assert_istrue.md), [assert_isfalse](assert_isfalse.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



