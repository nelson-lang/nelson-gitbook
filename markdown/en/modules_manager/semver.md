# semver

semantic versioner.

## Syntax

- r = semver(version_str, version_range)

## Input argument

- version_str - a string: current version.
- version_range - a string: version to compare or range.

## Output argument

- r - a double: -1, 0 or 1.

## Description

<p>
            <b>semver</b> compares a version string to an version or an range version.</p>
<p>if an range version is used, <b>r</b> return 0 (not satisfied) or 1 (satisfied).</p>
<p>if an simple version is used, an comparaison value <b>r</b> is returned -1 (inferior), 0 (equal) or 1 (superior).</p>
<p>supported range operators:</p>
<p>
                <b>=</b> - Equality</p>
<p>
                    <b>>=</b> - Higher or equal to</p>
<p>
                        <b><=</b> - Lower or equal to</p>
<p>
                            <b><</b> - Lower than</p>
<p>
                                <b>></b> - Higher than</p>
<p>
                                    <b>^</b> - Caret operator comparison</p>
<p>
                                        <b>~</b> - Tilde operator comparison</p>

## Bibliography

https://semver.org/

## Used function(s)

semver.c

## Example

```matlab

semver('1.5.10', '2.3.0')
semver('2.3.0', '1.5.10');
semver('1.5.10', '1.5.10')
semver('1.2.3', '~1.2.3')
semver('1.5.3', '~1.2.3')
semver('1.0.3', '~1')
semver('2.0.3', '~1')
semver('1.2.3-alpha', '>1.2.3-beta')
semver('1.2.3-alpha', '<1.2.3-beta')
semver('1.2.3', '^1.2.3')
semver('1.2.2', '^1.2.3')
semver('1.9.9', '^1.2.3')
semver('2.0.1', '^1.2.3')
```

## See also

[version](../core/version.md), [getmodules](../modules_manager/getmodules.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
