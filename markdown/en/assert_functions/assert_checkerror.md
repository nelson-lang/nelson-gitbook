# assert_checkerror

Check that a command raises the expected error.

## Syntax

- assert_checkerror(command, expected_error_message)
- r = assert_checkerror(command, expected_error_message)
- [r, msg] = assert_checkerror(command, expected_error_message)
- assert_checkerror(command, expected_error_message, expected_error_identifier)
- r = assert_checkerror(command, expected_error_message, expected_error_identifier)
- [r, msg] = assert_checkerror(command, expected_error_message, expected_error_identifier)

## Input argument

- command - a string containing the command to execute and test for errors.
- expected_error_message - a string containing the expected error message that should be raised.
- expected_error_identifier - a string containing the expected error identifier (optional).

## Output argument

- r - a logical value: true if the test passes, false otherwise.
- msg - a string containing the error message. If r == true, then msg == ''. If r == false, then msg contains the assertion failure message.

## Description

<p>assert_checkerror verifies that executing a command raises the expected error message.</p>

<p>If the command does not raise any error, or if it raises an error with a different message than expected, the assertion fails.</p>

<p>When the optional expected_error_identifier parameter is provided, the function also checks that the error identifier matches the expected one.</p>

<p>This function is particularly useful for unit testing to ensure that invalid inputs or operations properly generate the expected error conditions.</p>

## Examples

Test that cos function with no arguments raises the expected error:

```matlab
assert_checkerror('cos', _('Wrong number of input arguments.'));
```

Example that demonstrates assertion failure with wrong expected message:

```matlab
try
    assert_checkerror('cos', _('Wrong error message.'));
catch ME
    disp(['Error: ' ME.message])
end
```

Test with both error message and error identifier:

```matlab
assert_checkerror('mustBeFinite(NaN)', _('Value must be finite.'), 'Nelson:validators:mustBeFinite')
```

Using return values to handle assertion results:

```matlab
[r, msg] = assert_checkerror('cos', _('Wrong number of input arguments.'));
if r
    disp('Test passed: cos function properly raises expected error')
else
    disp(['Test failed: ' msg])
end
```

## See also

[assert_istrue](../assert_functions/assert_istrue.md), [assert_isfalse](../assert_functions/assert_isfalse.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
