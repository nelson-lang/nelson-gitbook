# groot

graphic root object.

## Syntax

- g = groot()

## Output argument

- g - a graphics object: root object.

## Description

<p>
            groot returns graphic root object.</p>

<p>Properties:</p>

<p>
                Children: Array of available figure objects.</p>

<p>
                    CurrentFigure: Current figure graphics object.</p>

<p>
                        Parent: empty array (No parent)</p>

<p>
                            PointerLocation: Current location of pointer.</p>

<p>
                                ScreenDepth: Number of bits that define each pixel color.</p>

<p>
                                    ScreenSize: Size of primary display (vector).</p>

<p>
                                        Tag: Object identifier: string scalar, character vector, '' (default).</p>

<p>
                                            Type: Type 'root'.</p>

<p>
                                                Units: 'pixels'.</p>

<p>
                                                    UserData: User data: array or [] (default).</p>

## Example

```matlab
g = groot()
g.ScreenDepth
```

## See also

[figure](../graphics/figure.md), [gcf](../graphics/gcf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
