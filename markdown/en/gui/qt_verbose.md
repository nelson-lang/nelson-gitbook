# qt_verbose

show/hide Qt debug message.

## Syntax

- r = qt_verbose()
- p = qt_verbose(logical)

## Input argument

- logical - a logical: true to show messages, false to hide.

## Output argument

- r - logical: current value
- p - logical: previous value

## Description

<p>
            qt_verbose how/hide Qt debug message.</p>

<p>This function is usefull to debug Qt and Qml.</p>

## Example

```matlab
h = qt_verbose()
```

## See also

[qml_loadfile](../qml_engine/qml_loadfile.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
