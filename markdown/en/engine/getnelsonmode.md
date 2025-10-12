# getnelsonmode

Returns current Nelson mode.

## Syntax

- m = getnelsonmode()

## Output argument

- m - a string.

## Description

<p>
            getnelsonmode() returns current Nelson mode used.</p>

<p>There are 5 modes: </p>

<p>
                BASIC_ENGINE: Nelson used as engine without any graphics.</p>

<p>
                    ADVANCED_ENGINE: Nelson used as engine with graphics/gui.</p>

<p>
                        BASIC_TERMINAL: Nelson launched as terminal without graphics.</p>

<p>
                            ADVANCED_TERMINAL: Nelson launched as terminal with graphics/gui.</p>

<p>
                                BASIC_SIO_CLIENT: Nelson launched as socket IO client.</p>

<p>
                                    ADVANCED_SIO_CLIENT: Nelson launched as socket IO client with graphics/gui.</p>

<p>
                                        GUI: Nelson launched as a graphical application (default).</p>

## Example

```matlab
getnelsonmode()
```

## See also

[executable](../engine/executable.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
