# ferror

Test for i/o read/write errors.

## Syntax

- msg = ferror(fid)
- [msg, code] = ferror(fid)
- ferror(fid, 'clear')

## Input argument

- fid - a file descriptor

## Output argument

- code - an integer value: 0 if no error. negative value if an error is detected.
- msg - an character vector: error message equivalent to error code.

## Description

<p>
            <b>ferror</b> inquires about file error status.</p>
<p>
                <b>ferror(fid, 'clear')</b> clears the error indicator for the specified file.</p>
<p>For more help about returned message, consult C run-time library manual for further details.</p>

## Example

```matlab
filename = [tempdir(), 'test_ferror.csv'];
fid = fopen(filename, 'w');
res = fgets(fid);
[msg, code] = ferror(fid)

```

## See also

[fopen](../stream_manager/fopen.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
